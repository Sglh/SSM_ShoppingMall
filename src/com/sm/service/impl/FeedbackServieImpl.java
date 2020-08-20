package com.sm.service.impl;

import com.sm.mapper.AddressMapper;
import com.sm.mapper.ConsumMapper;
import com.sm.mapper.FeedbackMapper;
import com.sm.pojo.Address;
import com.sm.pojo.Feedback;
import com.sm.service.FeedbackServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FeedbackServieImpl implements FeedbackServie {

    @Autowired
    private AddressMapper addressMapper;
    @Autowired
    private FeedbackMapper feedbackMapper;
    @Override
    public List<Address> selAddressAll(int uid) {
        return addressMapper.selAddressAll(uid);
    }

    @Override
    public int FeedAdd(Feedback feedback) {
        return feedbackMapper.FeedAdd(feedback);
    }
}
