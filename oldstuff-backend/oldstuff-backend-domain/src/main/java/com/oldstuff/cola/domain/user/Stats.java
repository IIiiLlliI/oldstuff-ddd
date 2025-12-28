package com.oldstuff.cola.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
public class Stats {
    private Integer orderNum;
    private Double score;
}
