package com.cjc.springcrudapp.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="batch_shift_requests")
public class BatchShiftRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int oldBatch;
    private int newBatch;
    private String status; // PENDING / APPROVED / REJECTED

    @ManyToOne
    private Student student;
}
