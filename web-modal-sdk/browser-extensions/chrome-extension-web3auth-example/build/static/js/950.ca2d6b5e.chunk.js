(self.webpackChunkw3a_chrome_extension=self.webpackChunkw3a_chrome_extension||[]).push([[950],{66017:(e,r,n)=>{"use strict";n.r(r),n.d(r,{getED25519Key:()=>s});var t=n(99130),a=n.n(t),f=n(30261).Buffer;const o=a().lowlevel;function s(e){let r;r="string"===typeof e?f.from(e,"hex"):e;const n=new Uint8Array(64),t=[o.gf(),o.gf(),o.gf(),o.gf()],a=new Uint8Array([...new Uint8Array(r),...new Uint8Array(32)]),s=new Uint8Array(32);o.crypto_hash(n,a,32),n[0]&=248,n[31]&=127,n[31]|=64,o.scalarbase(t,n),o.pack(s,t);for(let f=0;f<32;f+=1)a[f+32]=s[f];return{sk:f.from(a),pk:f.from(s)}}},78848:()=>{}}]);
//# sourceMappingURL=950.ca2d6b5e.chunk.js.map