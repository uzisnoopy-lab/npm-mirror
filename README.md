# NPM Mirror
<br/>

A local NPM Registry based on [Verdaccio](https://verdaccio.org/) that acts as a Proxy Cache for npmjs.org.

Sometimes our main problem isn't the code — it's access to the few hundred megabytes of dependencies that a project won't run without.

Overall, NPM Mirror helps you to:

- Reduce your dependency on the internet
- Install packages faster
- Have access to needed packages during internet outages
- Have a shared cache among team members

<br/>

---

## 📚 Documentation

For setup, configuration, and full project details, refer to the documentation:

https://cipherunits.github.io/npm-mirror/

<br/>

---

## How It Works

```text
                    First Request

           pnpm / npm / yarn
                    │
                    ▼
              Verdaccio Mirror
                    │
        ┌───────────┴───────────┐
        │                       │
    Exists in Cache?        Doesn't exist?
        │                       │
        ▼                       ▼
   Send to user           Fetch from npmjs.org
                                │
                                ▼
                        Save into Storage
                                │
                                ▼
                          Send to user
```

After the first download, the package is stored in Storage, and subsequent requests are served without needing to fetch again from npmjs.org.

---

## Features

- 🚀 Faster dependency installation
- 📦 Automatic caching of used packages
- 🌐 Proxy interface between the project and npmjs.org
- 📴 Ability to use the cache during internet outages
- 👥 Shared cache among team members
- ⚙️ Compatible with npm, pnpm, and yarn

---

## Installation & Setup

```bash
git clone https://github.com/cipherunits/npm-mirror.git

cd npm-mirror

make up
```

Once running, the Registry will be available at:

```
http://localhost:4873
```

To configure the registry, you can use the following command:

```bash
npm config set registry http://localhost:4873
```
<br/>
<br/>

# A Small Note :)

And finally, NPM Mirror isn't meant to normalize national internet restrictions; its goal is that when access to npmjs.org becomes difficult for whatever reason, developers can keep working.

In Iran, especially during times when international internet is limited, unstable, or pushed toward the national internet, one of the first problems development teams face is access to the dependencies their projects rely on.

A good mirror doesn't solve all internet problems, but it helps remove a large part of your dependency on the outside network during disruptions, so you can keep developing.

Because the internet here is sometimes like a dependency without a lockfile; you never quite know what version will be installed tomorrow. 🙂

So have a mirror, have a cache, but always have a plan B too;
(and if plan B doesn't work either, maybe it's time to turn to Snapp 😄)


<br/>
<br/>
<br/>

<p align="center">
  <b><i>Wishing for better days and a more stable life :)</i></b>
</p>

<p align="center">
  <b><i>Made with ❤️ for developers by CipherUnit</i></b>
</p>