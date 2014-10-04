//<continuation number="840">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm2192h.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev219ノイズ戯れフェラ=true;
	#ev219ノイズ戯れフェラa=true;
	#ev219ノイズ戯れフェラb=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2193h.nss";

}


scene dm2192h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

//	OnBG(10,"bg302012_5_グリッター部屋02");
//	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -1019, -487, "cg/bg/l/bg302012_5_グリッター部屋02_l.jpg");
	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01ベッド角.jpg");
	Fade("絵背景101", 0, 1000, null, true);

	FadeDelete("上背景", 0, null, true);

	Fw("fwノイズ_通常帽子なし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000470a03">
"You sure came a lot&."

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000480a01">
"Shut up&.&.&. Wipe it off already&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
I started to get up to go get a tissue&, but Noiz suddenly  brought his hand to his mouth&.

{
	Fw("fw蒼葉_通常_shy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000490a01">
"!!"

{
	FwPro("fwノイズ_通常帽子なし_cool2",2500,"fwノイズ_通常帽子なし_normal3");
//	Fw("fwノイズ_通常帽子なし_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000500a03">
"Bitter&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
Noiz licks his fingers that were covered in my semen with  an extremely casual expression&.

I-I've said many times that he has no shame&.&.&.
But&.&.&. He licked it&.&.&.

Besides&, only I came&. Noiz hasn't shown signs of being 
very aroused at all&.

&.&.&.&.&.

&.&.&.That's not fine at all&.

As someone older than him&, and as a man&.

Since we've come this far&, I have to do it too&.

If my hand's no good&.&.&.

&.&.&.I hear the sound of a switch flipping in my head&.

{
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 500, @0, @30, Dxl1, false);
	Fade("絵背景101", 500, 0, null, true);
}
I lifted my body up&, got on all fours and fell to Noiz's 
feet&.

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000510a03">
"What?"

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000520a01">
"Just let me do this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ120", 120, -137, -150, "cg/ev/l/ev219ノイズ戯れフェラa_l.jpg");

	CreateTextureEX("絵ＥＶ110", 110, -1023, 0, "cg/ev/l/ev219ノイズ戯れフェラ_l.jpg");
	Move("絵ＥＶ110", 1000, -1023, -224, Dxl3, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
Noiz's cock is still quite limp; he apparently hadn't felt it very much&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);
}
Noiz throws me a questioning look when I lean over his 
crotch&. I support his cock with one hand and bring my 
face closer to it&.

Lightly licking at the tip&, I gradually open my mouth and 
take it in&.

Noiz is larger than he looks&, and my mouth is filled 
immediately&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000530a03">
"&.&.&.Haa&.&.&. nh&."

&.&.&.Oh&.

I hear the faint sound of him exhaling&.

Maybe&, he&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE03","se人体_動作_キス01");
	MusicStart("SE03",0,300,0,1400,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,400,0,800,null,false);

	CreateTextureEX("絵ＥＶ111", 111, Center, Middle, "cg/ev/ev219ノイズ戯れフェラ.jpg");
	Move("絵ＥＶ110", 1500, -723, -324, Dxl3, false);
	Fade("絵ＥＶ111", 1500, 1000, null, true);
	Delete("絵ＥＶ110");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
I slowly move my head up and down&, rubbing him against the walls of my mouth&.

Naturally&, this is my first time doing this&.

But now&, more than hesitation or embarrassment&, I feel a 
desire to make Noiz come&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ112", 112, -508, -242, "cg/ev/m/ev219ノイズ戯れフェラa_m.jpg");
	Move("絵ＥＶ112", 500, -508, -277, Dxl3, false);
	Fade("絵ＥＶ112", 500, 1000, null, true);
	Delete("絵ＥＶ111");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000540a01">
"Nn&.&.&. nh&."

If I lick here with my tongue&, and move my hand like this&.&.

Because we both have dicks&, I somewhat know what to do 
even if this is my first time&.

But when his piercings touch my tongue&, it feels kinda 
strange&.&.&. 

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000550a01">
"Nh&.&.&. ha&, nh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ112", 1000, -60, -63, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000560a03">
"&.&.&.Nh&."

I have a feeling I heard a moan and look up at Noiz&. 
He had closed his eyes at some point&.

My heart jumps a little at the sight&.

The guy who was saying cocky things a while ago is now 
feeling good because of what I'm doing&.

I think I'm almost thrilled&, here&.

I want to&.&.&. see more of Noiz's erotic face&.

With such a desire emerging in me&, I naturally focus on 
the act&.

I focus on teasing the places that I thought felt good&, 
and keep prying the dent of the tip while stroking his 
stick and bags with my hand&.

Even when his piercings touch my teeth with a clicking 
sound&, I'm not bothered at all&.

{
	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,500,0,1200,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000570a01">
"Huu&.&.&. Nn&, ah&.&.&. hff&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000580a03">
"&.&.&.Nh&, ngh&.&.&."

Noiz's breathing intervals become shorter&, and my head is  suddenly given a strong push&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 1500, 0, null);

	CreateTextureEX("絵ＥＶ113", 113, -137, -100, "cg/ev/l/ev219ノイズ戯れフェラ_l.jpg");
	Move("絵ＥＶ113", 500, -137, -150, Dxl1, false);
	Fade("絵ＥＶ113", 500, 1000, null, true);

	Fade("絵ＥＶ112", 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
When I look up&, Noiz stares at me as if he wants to say 
something&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000590a01">
"&.&.&.What?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000600a03">
"&.&.&.A little stronger&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000610a01">
"Stronger&.&.&."

{
	CreateSE("SE02","se人体_動作_衣擦れ22");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 2000, 0, null);
}
I separate my mouth from Noiz and raise my head&, then I tryto squeeze my hand with more power and check his reaction&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000620a01">
"Like this?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000630a03">
"No&, more&.&.&."

{
	Fade("絵ＥＶ120", 500, 1000, null, true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000640a03">
"&.&.&.Bite it&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000650a01">
"!?"

What did he say just now?

Bite him?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
Noiz presses down on my head and urges me to continue&.

I take Noiz in my mouth again&, slightly confused&.

Bite&.&.&. Really bite? With teeth?
Won't it hurt?

My head is full of question marks&.

But he really said to bite&, didn't he&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,800,null,false);
}
I fearfully and gently tried to apply my teeth on the tip&.

When I feel my teeth sinking into the meat&, it scares me 
a bit&.&.&.

It hurts to just imagine the same being done to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵ＥＶ113");
	Fade("絵背景101", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000660a03">
"&.&.&.Hurry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ120", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
He urges me on&.
I can only prepare myself for the worst here&.

He's got piercings all over his body&, so it's fine&.&.&. 
isn't it?

It's fine&. &.&.&.Maybe&.

{
	CreateSE("SE02","se人体_動作_衣擦れ14");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000670a01">
"&.&.&. &.&.&.Ngh!"

I close my eyes and chew Noiz's shaft with my back teeth&.

&.&.&.&.&.

The feeling of teeth sinking into the meat&, it's 
indescribable&.

Does it hurt after all&.&.&.? Is he fine?
He can't be bleeding&, right?

I nervously look up at Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ114", 114, -137, -150, "cg/ev/l/ev219ノイズ戯れフェラb_l.jpg");
	Fade("絵ＥＶ114", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000680a03">
"&.&.&.Nhn&."

Noiz had closed his eyes&, with an expression that I 
could even call ecstacy&.

&.&.&.Are you serious&.

&.&.&.He's enjoying it?

Does he only feel it when bitten?

It's strangely uplifting&.&.&. I think&.

My heart starts to run like crazy&.

This is bad&.
This dangerous feeling&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE02",0,450,0,900,null,false);

	CreateTextureEX("絵ＥＶ112", 112, -508, -242, "cg/ev/m/ev219ノイズ戯れフェラa_m.jpg");
	Move("絵ＥＶ112", 0, -222, -454, null, true);
	Fade("絵ＥＶ112", 0, 1000, null, true);
	Move("絵ＥＶ112", 500, -322, -454, Dxl1, false);
	FadeDelete("絵ＥＶ114", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
Convincing myself that it's fine&, I take Noiz in my mouth  again and rest my teeth on the tip of his cock&.

I bite him strongly but cautiously&, nibbling&, and try 
pulling on the piercings with my teeth&.

While doing that&, I put my nails against his shaft like 
I'm scratching it&, and squeeze it tightly in my palm&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000690a03">
"Uh&.&.&. haah&.&.&. uh&.&.&."

When gasps leak from Noiz's mouth&, the depths of my body 
tingle ever so faintly&.

I'm profusely happy that I'm able to make him feel good&.

I intently caress Noiz's shaft with both my mouth and hand&.

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000700a03">
"Ah&, ha&.&.&."

Noiz&, who has his eyes closed&, knits his eyebrows and 
slightly moves his hips&.

The fluids filling my mouth are not only saliva&, but 
Noiz's precum too&.

When I did it by hand a while ago he wasn't reacting&, 
but now he properly is&.

Noiz has become considerably big&, and is almost unavoidablytouching the back of my throat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,400,0,1200,null,false);

	CreateTextureEX("絵ＥＶ115", 115, -692, -419, "cg/ev/l/ev219ノイズ戯れフェラa_l.jpg");
	Move("絵ＥＶ112", 500, -322, -354, Dxl3, false);
	Move("絵ＥＶ115", 500, -692, -522, Dxl1, false);
	Fade("絵ＥＶ115", 500, 1000, null, true);
	Delete("絵ＥＶ112");
	Delete("絵背景101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
Despite that&, I ignore my own agony and continue earnestly because I want him to come&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000710a03">
"Guh&, ha&, haah&.&.&."

I sip the bitter fluid and continue to bite down on Noiz's cock&, when suddenly he holds his breath&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000720a03">
"&.&.&.Nnh&.&.&. Ugh!!"

Noiz's body shakes greatly&, his cock pulsing in my mouth&.&.&.
<k>And soon enough&, my mouth is filled with a lukewarm liquid&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,300,0,1000,null,false);

	CreateTextureEX("絵ＥＶ116", 116, -692, -522, "cg/ev/l/ev219ノイズ戯れフェラb_l.jpg");
	Move("絵ＥＶ115", 700, -627, -568, Axl1, false);
	Move("絵ＥＶ116", 700, -627, -568, Axl1, false);
	Fade("絵ＥＶ116", 700, 1000, null, true);
	Delete("絵ＥＶ115");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000730a01">
"&.&.&.! &.&.&.Gh&."

Just before the semen can spill from my mouth&, I 
involuntarily swallow it&.

&.&.&.It's bitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ117", 117, Center, Middle, "cg/ev/ev219ノイズ戯れフェラb.jpg");
	Fade("絵ＥＶ117", 500, 1000, null, true);
	Delete("絵ＥＶ116");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
When I separate my lips&, the leftovers that I couldn't 
swallow drips down my chin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000740a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 500, @0, @-30, Dxl1, false);
	FadeDelete("絵ＥＶ117", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]
Noiz&, who's face is faintly flushed&, looks at me&, 
breathing roughly&.

Maybe it's because he just came&, but he doesn't have that 
usual tough guy look to him anymore&.

It might even be a little cute&.

Thinking of how he's now like this because of what I did&, 
I feel a strange sense of accomplishment and satisfaction&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2193h.nss"]

}
