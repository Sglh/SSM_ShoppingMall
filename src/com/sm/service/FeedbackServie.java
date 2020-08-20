package com.sm.service;

import com.sm.pojo.Address;
import com.sm.pojo.Feedback;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface FeedbackServie {
    public List<Address> selAddressAll(int uid);
    public int FeedAdd(Feedback feedback);
}
