---
title: Ota yhteyttä
layout: page
permalink: /ota-yhteytta
lang: fi
page_id: contact
---

# Ota yhteyttä

---

Mikäli teillä on kysymyksiä tai haluatte ottaa meihin yhteyttä, voitte tehdä niin allal olevan lomakkeen kautta.

<form action="https://api.web3forms.com/submit" method="POST" class="max-w-md">
    <input type="hidden" name="access_key" value="c81d883d-8f6b-4db4-9b63-6269f0762368">
    
    <div class="mb-6">
        <label for="name" class="block text-sm font-medium text-gray-700 mb-2">Nimi *</label>
        <input type="text" id="name" name="name" required 
               class="w-full px-4 py-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
    </div>
    
    <div class="mb-6">
        <label for="email" class="block text-sm font-medium text-gray-700 mb-2">Sähköposti *</label>
        <input type="email" id="email" name="email" required 
               class="w-full px-4 py-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
    </div>
    
    <div class="mb-6">
        <label for="subject" class="block text-sm font-medium text-gray-700 mb-2">Aihe *</label>
        <input type="text" id="subject" name="subject" required 
               class="w-full px-4 py-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
    </div>
    
    <div class="mb-8">
        <label for="message" class="block text-sm font-medium text-gray-700 mb-2">Viesti *</label>
        <textarea id="message" name="message" rows="5" required 
                  class="w-full px-4 py-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"></textarea>
    </div>
    
    <div class="mb-4">
        <div class="h-captcha" data-captcha="true"></div>
    </div>
    
    <button type="submit" 
            class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition duration-200 flex items-center justify-center gap-2">
        <i class="fas fa-paper-plane"></i>
        Lähetä viesti
    </button>
</form>

<script src="https://web3forms.com/client.js" async></script>
