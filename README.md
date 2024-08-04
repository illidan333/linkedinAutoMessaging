# linkedinAutoMessaging
automatically message all my linkedin connections

# how to use
1. go to your linkedin connections page (my network->manage my network->connections
2. go to the bottom of the page and hit "show more result"
3. hold the "END" key until you reach the bottom
4. copy paste my code into the dev tool console and modify the default message
5. you need to make at least one modification to the message before you send it or it will just send the linked in default

# my code
```
    defaultMessage = "I am currently looking for a job. If you know anyone is hiring, please let me know. I hope I can find a software engineer position near Vancouver, BC, Canada. However, I am also open to other positions and locations. Thank you very much!";
    messageButtonContainerSelector = `.scaffold-finite-scroll__content ul`;
    messageButtonSelector = `.entry-point`;
    textBoxSelector = `.msg-form__contenteditable`;
    for (const li of document.querySelector(messageButtonContainerSelector).querySelectorAll('li')) {
        li.querySelector(messageButtonSelector).children[1].dispatchEvent(new Event(`click`));
        await new Promise(r => setTimeout(r, 500));
        textBox = document.querySelector(textBoxSelector);
        textBox.innerHTML += "<p><br></p><p>" + defaultMessage + "</p>";
        textBox.dispatchEvent(new Event(`input`));
        await new Promise((resolve) => {
            const targetElement = document.querySelector(textBoxSelector);
            if (!targetElement) {
                resolve();
                return;
            }
            const observer = new MutationObserver((mutations, obs) => {
                if (!document.querySelector(textBoxSelector)) {
                    obs.disconnect();
                    resolve();
                }
            });
            observer.observe(document.body, {
                childList: true,
                subtree: true,
            });
        });
        await new Promise(r => setTimeout(r, 500));
    }
```
# minified code
```
    for(const li of(defaultMessage="I am currently looking for a job. If you know anyone is hiring, please let me know. I hope I can find a software engineer position near Vancouver, BC, Canada. However, I am also open to other positions and locations. Thank you very much!",messageButtonContainerSelector=".scaffold-finite-scroll__content ul",messageButtonSelector=".entry-point",textBoxSelector=".msg-form__contenteditable",document.querySelector(messageButtonContainerSelector).querySelectorAll("li")))li.querySelector(messageButtonSelector).children[1].dispatchEvent(new Event("click")),await new Promise(e=>setTimeout(e,500)),textBox=document.querySelector(textBoxSelector),textBox.innerHTML+="<p><br></p><p>"+defaultMessage+"</p>",textBox.dispatchEvent(new Event("input")),await new Promise(e=>{let n=document.querySelector(textBoxSelector);if(!n){e();return}let o=new MutationObserver((n,o)=>{document.querySelector(textBoxSelector)||(o.disconnect(),e())});o.observe(document.body,{childList:!0,subtree:!0})}),await new Promise(e=>setTimeout(e,500));
```
