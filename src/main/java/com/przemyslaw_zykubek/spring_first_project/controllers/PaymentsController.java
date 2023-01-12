package com.przemyslaw_zykubek.spring_first_project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.przemyslaw_zykubek.spring_first_project.data.PaymentsRepository;
import com.przemyslaw_zykubek.spring_first_project.models.Payment;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/payments")
public class PaymentsController {
    
    @Autowired
    private PaymentsRepository paymentsData;

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

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deletePayment(@PathVariable long id) {
        Optional<Payment> payment = paymentsData.findById(id);

        if(payment!=null) {
            paymentsData.delete(payment.get());
        }
        return ("redirect:/payments/list");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editPayment(@PathVariable long id) {
        Optional<Payment> payment = paymentsData.findById(id);

        if(payment!=null) {
            return new ModelAndView("editPayment", "form", payment.get());
        }
        else {
            return payments();
        }   
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Payment payment) {

        if(payment!=null) {
            paymentsData.save(payment);
        }
        return ("redirect:/payments/list");
    }
}
