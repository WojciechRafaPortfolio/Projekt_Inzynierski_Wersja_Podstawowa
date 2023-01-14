//
// Created by wpr on 29.12.22.
//

#include "Custom_Data_IO.hpp"

Custom_Data_IO::Custom_Data_IO(unsigned short port_, sf::IpAddress remote_dev_ip_):
        Pernament_Connector(port_, remote_dev_ip_)
{
    update_period_microseconds = 500000;
}

void Custom_Data_IO::update() {
    if(mode == Pernament_Connector::p_connector_mode::establish_connection){
        Pernament_Connector::update();
        if(get_mode() == Pernament_Connector::p_connector_mode::pernament_communication){
            update_period_microseconds = 50000;
        }
        // czas jest aktualziowany w Pernament_Connector::update();
    }else{
        // odbieranie
        sf::Packet received_packet;
        if(receive_n_time(received_packet)){
            update_recived(received_packet);
        }


        // nadawanie
        auto sended_packet = prepare_packet_to_send();
        auto status = send(sended_packet);


        // testowe wysyłanie i wyświetlanie
        static sf::Int32 data_int = 0;
        static float  data_float = 0;

        auto status_1 = update_variable_by_name_int("Wiadomosc_int", data_int);
        auto status_2 = update_variable_by_name_float("Wiadomosc_float", data_float);

        if(not(status_1 and status_2))
            throw std::exception();

        data_int += 2;
        data_float += 1./3;

        last_update_time = clock.getElapsedTime().asMicroseconds();
    }
}

void Custom_Data_IO::add_sent_message(const Custom_Data_IO_Window::message& message) {
    sended_message_list.push_back(message);
}

void Custom_Data_IO::add_received_message(const Custom_Data_IO_Window::message& message) {
    recived_message_list.push_back(message);
}

bool Custom_Data_IO::update_variable_by_name_int(const std::string &name, int value) {
    for(auto & i : sended_message_list){
        if(i.is_int and i.name == name){
            i.data_int = value;
            return true;
        }
    }

    return false;
}

bool Custom_Data_IO::update_variable_by_name_float(const std::string& name, float value) {
    for(auto & i : sended_message_list){
        if(not i.is_int and i.name == name){
            i.data_float = value;
            return true;
        }
    }

    return false;
}

std::vector<Custom_Data_IO_Window::message> &Custom_Data_IO::get_recived_message_list() {
    return recived_message_list;
}

bool Custom_Data_IO::update_recived(sf::Packet &recived_packet) {
    while (not recived_packet.endOfPacket()){

        sf::Int32 id;
        recived_packet >> id;

        auto message = find_message_by_id_recived(id);
        if(message == nullptr)
            break;

        if(message->is_int){
            recived_packet >> message->data_int;
        }else{
            recived_packet >> message->data_float;
        }
    }

    return false;
}

Custom_Data_IO_Window::message *Custom_Data_IO::find_message_by_id_recived(sf::Int32 id) {
    for(auto & message : recived_message_list){
        if(message.id == id){
            return &message;
        }
    }
    return nullptr;
}

sf::Packet Custom_Data_IO::prepare_packet_to_send() {
    sf::Packet packet_to_send;

    for(auto& message : sended_message_list){
        if(message.is_int)
            packet_to_send << message.id << message.data_int;
        else
            packet_to_send << message.id << message.data_float;
    }

    return packet_to_send;
}

bool Custom_Data_IO::get_variable_by_name_int(const std::string &name, sf::Int32& value) {
    for(auto & i : sended_message_list){
        if(i.is_int and i.name == name){
            value = i.data_int;
            return true;
        }
    }

    return false;
}

bool Custom_Data_IO::get_variable_by_name_float(const std::string &name, float& value) {
    for(auto & i : sended_message_list){
        if(not i.is_int and i.name == name){
            value = i.data_float;
            return true;
        }
    }

    return false;
}

bool Custom_Data_IO::get_variable_by_id_int(const std::string &name, sf::Int32& value) {
    for(auto & i : sended_message_list){
        if(i.is_int and i.name == name){
            value = i.data_int;
            return true;
        }
    }

    return false;
}

bool Custom_Data_IO::get_variable_by_id_float(const std::string &name, float& value) {
    for(auto & i : sended_message_list){
        if(not i.is_int and i.name == name){
            value = i.data_float;
            return true;
        }
    }

    return false;
}

bool Custom_Data_IO::receive_n_time(sf::Packet &received_packet) {
    setBlocking(false);

    bool was_any_good_packet = false;
    sf::Packet local_packet;

    for(int i = 0; i < max_number_of_recived_check; i++){
        auto status = receive(local_packet);

        if(status == sf::Socket::Done){
            if(not local_packet.endOfPacket()) {
                was_any_good_packet = true;
                received_packet = local_packet;
            }else{
                break;
            }

        }else{
            break;
        }
    }
    setBlocking(true);
    return was_any_good_packet;
}
