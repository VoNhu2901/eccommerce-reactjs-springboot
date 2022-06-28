package com.example.assignment.dto.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class ActorResponseDTO {
    private Long id;
    private String firstName;
    private String lastName;
    private String avatar;
}
