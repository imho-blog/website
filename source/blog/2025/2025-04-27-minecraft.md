---
slug: 2025-04-27-minecraft
title: Minecraft Hijacked
authors: [imho]
tags: []
---

Right, so my kid asked me recently if they could have a minecraft realm subscription. I am naturally against paying a single subscription for a single purpose, but I made a deal with them to look into setting up a private server for them on a VPS. To bad Microsoft has decided this isn't allowed anymore!

<!-- truncate -->

I started out by checkon VPSes that charged an hourly rate. I was really hoping that I could find something that charged a reasonable rate for a instance that was running and a lower rate for something that was not running. Turns out, that model doesn't really exist. All of the advertisers lie that they do, but I'll tell you what they are really doing. VPS services will continue to charge for the VPS allocation, whether you are actually using the resources or not. The only way to prevent from getting charged is to destroy your instance. This leaves me with one option: Whenever we want to shutdown the service to save some money, we have to snapshot or backup the instance first and then destroy the instance. When we want to reinstantiate the service, we have to recreate the instance (with a new IP) and restore from snapshot or backup. The service I tested this the most on was Vultr and they have this architecture where their snapshots are basically disk copies, not incremental backups, so they take forever (>15min for fresh install).

Ok, fine, VPS folks are only in it for the money and are only cheap for the competition. I get it. But lets move on to the actual functionality of the minecraft instance I was trying to build. We want a private minecraft bedrock server that my kid can play on with her friends, hopefully for way cheaper than a realm because we can either piggy back another instance or shutdown an unused server during the day (when folks are in school). 

I was able to quickly get a moderate Vultr instance up and running with a minecraft bedrock server running in a container. I went onto my X-Box to connect to it, only to find that Microsoft's Mojang had changed the interface so you can no longer access private servers?! My kid was heart broken. Sure, there are weird services like [BedrockConnect](https://github.com/Pugmatt/BedrockConnect) where you change a DNS and you get a weird work around. But the whole point of having a server is to be able to have all your peers and classmates join in on the fun. And lets face it, there is no way that the average adolecent is going to me changing their DNS settings on their XBox to access a single Minecraft server. What the hell?!

Further more, while experiementing with BedrockConnect (which I've yet to get working with the DNS method), I accidently was able to open the old Minecraft interface that DID allow you to access private servers. It's still in the XBox version, but superficially disabled for greed and authoritarian reasons. Because Microsoft can't implement better parental controls over Mojang, now everyone has to suffer the stupidity of lawyers and cold business. I hate you Mojang.
