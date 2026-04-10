
# 💧 Water Turbidity Detection via 90° Light Scattering & MATLAB

> **DSP Mini Project | EC23401 — Digital Signal Processing**  
> Madras Institute of Technology, Anna University · April 2026

---

## 📌 Overview

This project is a **low-cost water turbidity detection system** built using a laser, LDR, and Arduino Nano.

The idea is based on **90° light scattering (nephelometry)**. When a laser passes through water:
- Clean water → very less scattering  
- Turbid water → more scattering  

The scattered light is detected by an LDR, and the Arduino reads it as an analog value. This data is sent to **MATLAB** for plotting and analysis.

This setup was built using simple components to understand how turbidity measurement works practically.

---

## 🧰 Hardware Used

- Arduino Nano (ATmega328P)  
- 650nm Red Laser Module  
- LDR Sensor Module  
- Dark Chamber (cardboard box)  
- USB Power Supply  

---

## 🔌 Working 

Laser → Water Sample → Scattered Light (90°) → LDR → Arduino → MATLAB



## 💻 Arduino Code

const int ldrPin = A0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  int ldrValue = analogRead(ldrPin);   // Read sensor

  Serial.println(ldrValue);            // Send to MATLAB

  delay(200);                          // Stable sampling
}





## 📊 MATLAB Code


clc; clear;

data = load('turbb.txt');

figure;
plot(data, 'LineWidth', 2);
xlabel('Sample Number');
ylabel('ADC Value');
title('Turbidity Analysis');
grid on;

for i = 1:length(data)
    val = data(i);

    if val < 30
      status = "Clear Water";
    elseif val < 60
      status = "Medium Turbidity";
    else
        status = "High Turbidity";
    end

    disp("Value: " + val + " --> " + status);
end




## 📈 Results


| Condition       |   ADC Value |  Output |
| --------------- | ---------   | ------ |
| Clear Water     |   15 – 20   |  Clear  |
| Slightly Turbid |   30 – 55   |  Medium |
| Highly Turbid   |    100+     |  High   |


## 🗂️ Project Structure

water-turbidity-nephelometer/
│
├── arduino/
├── matlab/
├── report/
├── images/
└── README.md





## 🔬 Concept

This project uses nephelometry, where light scattered at 90° is used to estimate particle concentration.


## 🚀 Applications

Drinking water quality checking
Small-scale testing
Educational use


## 👤 Author

Manikandan Prabhu B  
B.E. ECE, MIT Campus
