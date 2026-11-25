package dev.athos.monitorcatraca;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling // Habilita a execução periódica de tarefas (@Scheduled) na aplicação
public class MonitorCatracaApplication {

	public static void main(String[] args) {
		SpringApplication.run(MonitorCatracaApplication.class, args);
	}
}