package com.przemyslaw_zykubek.spring_first_project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.przemyslaw_zykubek.spring_first_project.data.PaymentsRepository;
import com.przemyslaw_zykubek.spring_first_project.models.Payment;

import java.util.List;

@Controller
@RequestMapping("/payments")
public class PaymentsController {
    
    @Autowired
    private PaymentsRepository paymentsData;

    @RequestMapping(value = "/addNew", method = RequestMethod.POST)
    public String newPayment(Payment payment) {

        paymentsData.save(payment);
        return ("redirect:/payments/list");
    }

    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
    public ModelAndView addNewPayment() {

        Payment payment = new Payment();
        return new ModelAndView("newPayment", "form", payment);
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView payments() {

        List<Payment> allPayments = paymentsData.findAll();

        return new ModelAndView("allPayments", "payments", allPayments);
    }
}
