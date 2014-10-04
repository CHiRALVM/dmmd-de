//<continuation number="750">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();　今、俺と蓮は確かに存在している。
	}

}


scene dm5530scr.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#ev553蒼葉を抱きしめる蓮=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5540_vs.nss";

}


scene dm5530scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/bg210011_2_暴露海と砂浜.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 1030, 1030, null, true);
	CreateTextureSP("絵背景EF", 100, Center, Middle, "cg/bg/bg210011_2_暴露海と砂浜.jpg");
	Request("絵背景EF", Smoothing);
	Zoom("絵背景EF", 0, 1030, 1030, null, true);
	Fade("絵背景EF", 0, 1000, null, true);
	Fade("絵背景", 0, 500, null, true);

	CreateSE("SE01","se擬音_精神_煙る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 2000, null, true);
	DrawEffect("絵背景EF", 0, "Ripple", 200, 200, null);
	FadeDelete("絵色白", 3000, null, true);

	Wait(1000);
	Fade("絵背景", 1500, 400, null, true);

	Wait(1000);

	SoundPlay("@dm015",0,450,true);

	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",500,true);

//※演出：↓通常の蓮が悲しそうに蒼葉を見つめる
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000010a06">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_shock4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000020a01">
"Ren&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Under the wall was Ren&, standing there with a sad look in 
his eyes&.

I can't sense any murderous intent from him&.

After this&, I'll face him&.
I'll be facing his true feelings&.

He stares at me for a little bit&, and then slowly opens 
his mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000030a06">
"I've always been watching over you&. I was always
 with you&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000040a01">
"&.&.&.Yeah&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal2");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000050a06">
"I was born for that reason&. My role was to protect you by
 keeping the balance of your mind in check&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000060a06">
"But as you started to lose control over yourself and
 became unstable&, my voice couldn't reach as far&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
That must've been when I used to lose control during Rhyme&.

I made Granny so worried&.&.&. but it must've been a burden 
on Ren too&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常バグ_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000070a06">
"I don't know what would've happened to you if you lost all control over your heart and my voice wouldn't reach you
 anymore&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000080a06">
"But I couldn't do anything except call out to you from
 inside&. Nothing physical&."

{	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000090a06">
"Terrified of my lack of ability&, I was left to only
 imagine what I could do&. But that's when I went inside
 of that old Allmate&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	EfRecoIn1(10000,200);
	Delete("絵背景EF");
	Delete("絵背景");

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev004犬蓮起動.jpg");

	EfRecoIn2(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
That Allmate&.&.&. so that dog one Ren was in&.

Ren was thrown out on the roadside&, and the sight was so 
pitiful that I ended up picking him up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000100a06">
"I thought it was my chance&. When the Allmate was
 registered&, the registrant recognition chip went
 online and I transferred in my consciousness&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000110a06">
"And when that happened&, my consciousness tuned in with
 the dog Allmate&. As an Allmate&, I could physically
 influence you&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000120a06">
"For a short while&, as that Allmate&.&.&. as Ren&, I connected with you&. I knew everything about the accident with Rhyme&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000130a06">
"But until now&, all memory of that incident had been
 erased&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);


	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000140a06">
"And then I had forgotten both about the Rhyme incident and
 who I really was&, that I was 'the other person inside
 Aoba'&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000150a06">
"I'd led myself to believe that I was living as Ren&, but I
 remembered&. Who I was&, what my purpose is&. I remembered
 it because of that worm&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal2");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000160a06">
"The worm that led to that bug had been built into the
 system and manifested in all the Allmates as emotional
 outbursts&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000170a01">
"'Emotional outbursts?'"

{	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000180a06">
"It just hasn't been announced publicly&. All Allmates have
 had it built in from the begninning&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev550バグ状態の蓮.jpg");
	DeleteAllSt(0,true);

	EfRecoIn2(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
If they were all infected from the beginning&, it must've 
been Toue's work&.

Noiz said that there was a bug going around with no way to repair it&, and this was probably it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	St("C",740, @0,@0,"st蓮_通常バグ_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000190a06">
"Not only does the bug tamper with emotions&, but memories&,
 too&.&.&. it rattles us with emotions that shouldn't be
 there&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000200a06">
"When an unexpected error occurs&, the bug will link with an Allmate's consciousness&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000210a06">
"It effects an Allmate's emotion function&, and that is
 why these emotions were born inside of me&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000220a06">
"So&.&.&. I ended up becoming Ren&, unable to live as my
 original self&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",0,true);

	EfRecoIn2(400);

	Wait(300);
	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000230a01">
"What do you mean&.&.&.?"

{	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000240a06">
"The first emotion I learned was an unbearable pain&. I&.&.&.
 Ren was an old model&. No match for a new model in terms of
 functions&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000250a06">
"Envy&, an inferiority complex&, despair&. I panicked at the
 thought that you might throw me away for a new model&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000260a06">
"It may have been the feelings of 'Ren'&, not me&, but&.&.&."

{	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000270a06">
"I noticed that&.&.&. it was a feeling that made me
 tremble with fear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000280a06">
"I don't want to hand you over to anyone&. I always want to
 be by your side&. Not to just watch over you&, but be
 something that could experience emotions with you&."

{	Fw("fw蒼葉_通常_shock4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000290a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000300a06">
"It was an idea far from what my original duty was&. I knew
 that&, but I couldn't stop it&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal2");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000310a06">
"Stuck between my emotions and my duty&, I wasn't able to
 pick either one&."

{	St("C",740, @0,@0,"st蓮_通常バグ_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000320a06">
"So I accepted the route where you would remove me from
 yourself&. If you would strongly reject me&, I'd disappear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000330a01">
"And&.&.&. when you were seperated from me&, you'd bare your
 teeth at me and snap&."

{	St("C",740, @0,@0,"st蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000340a06">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Ren keeps silent&.

After listening to his entire story&.&.&.

Frankly&, I was a little pissed off&.

Half of it was just shock&, but the other was&.&.&.

What the hell was he saying?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu蓮_通常バグ_normal");
	FadeSt("C",200,true);

	Wait(300);
	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000350a01">
"You're such a little kid&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000360a01">
"If you've always been with me&, shouldn't you know me the
 best?"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000370a01">
"Do you really think I hate you just because you snapped at me?"

{	St("C",740, @0,@0,"bu蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000380a06">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000390a01">
"Why do you think I kept working on you for so long even
 though you were some old model? Because you're important
 to me&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000400a01">
"You're important&, so I'd search like hell for parts just
 to fix you if you were broken&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000410a01">
"All of it&, all&, all&, all of it was because you're precious to me&. Who cares about newer types?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000420a01">
"I don't really get what you're going on about with your
 emotions and all&, but is it really that bad?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000430a01">
"Is it such a bad thing to feel emotions&, or to think about things?"

{	St("C",740, @0,@0,"bu蓮_通常バグ_normal2");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000440a06">
"&.&.&.Right now I'm going against my very reason for being&.
 My role is only to keep your mind in balance&, but I'm only
 disturbing it now&."

//felt a little too odd for Ren to be using raison d'etre

{	St("C",740, @0,@0,"bu蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000450a06">
"I can't exist like this&. Neither your mind or body can
 take my contradicting existance for long&. I'll finally
 be extinguished&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000460a01">
"No&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
The idea of Ren disappearing entirely from my life flashes through my mind&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000470a01">
"&.&.&.No&. I won't ever forgive you&. Aren't you me? Aren't I
 the one who decides whether you can or can't be here?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000480a01">
"I'll do whatever I have to do to keep you here&. Rhyme was
 like that too&."

{	St("C",740, @0,@0,"bu蓮_通常バグ_normal2");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000490a06">
"The one who vanishes will only be me&. The Allmate Ren will return back to what it was like at the beginning&,
 without any problems&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu蓮_通常バグ_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000500a06">
"So there won't be any drawbacks for you&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000510a01">
"&.&.&.!"

{	FwPro("fw蒼葉_通常_rage",7000,"fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000520a01">
"No one said anything like that&. It's not about the
 Allmate&. Now&, you listen to me&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000530a01">
"Ren&, you're&.&.&. irreplaceable&, and not as an Allmate&. I
 don't want you to go away&. I want you to stay with me&."

{	St("C",740, @0,@0,"bu蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000540a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000550a01">
"But you're still going to disappear&.&.&.?"

{	St("C",740, @0,@0,"bu蓮_通常バグ_normal");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000560a06">
"Aoba&.&.&."

{	St("C",740, @0,@0,"bu蓮_通常バグ_worry");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000570a06">
"I'm very happy that you feel that way&, but&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
Ren shuts his mouth and casts his eyes downwards&.

No matter how much we argue&, nothing will get through for 
sure&.

So I went up close to him&.

I reached my arms out and gently embraced him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
	Wait(150);

//※ＳＥ：軽い衣擦れ
//※演出：ＥＶの足元だけ表示

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

/*
	CreateTextureEX("絵ＥＶ100", 3000, Center, InBottom, "cg/ev/l/ev553蒼葉を抱きしめる蓮_l.jpg");
	Fade("絵ＥＶ100", 1500, 1000, null, true);
	Delete("絵背景EF");
*/

	CreateTextureEX("絵ＥＶ100", 3000, -851, -331, "cg/ev/l/ev553蒼葉を抱きしめる蓮_l.jpg");
	Move("絵ＥＶ100", 1000, -751, -331, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);
	Delete("絵背景EF");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000580a06">
"Aoba&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000590a01">
"I'll say it over and over&. I don't want you to disappear&.
 You're irreplaceable&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000600a01">
"So&, stay with me&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000610a06">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
When I raise my head&, I see Ren's expression changing for 
the first time&.
His eyebrows squeeze together&, and he squints with pain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
His hand timidly touches my cheek&.&.&.
And he tightly returns my embrace&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ200", 3000, -338, -188, "cg/ev/l/ev553蒼葉を抱きしめる蓮_l.jpg");
	Move("絵ＥＶ100", 1000, -651, -331, Dxl1, false);
	Move("絵ＥＶ200", 1000, -338, -138, Dxl1, false);
	Fade("絵ＥＶ200", 700, 1000, null, true);
	Wait(500);

	Delete("絵ＥＶ100");
//※演出：ＥＶの蒼葉と蓮に寄る
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000620a06">
"&.&.&.! Aoba&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
This world is fake&, only composed of data&. I'm not truly 
able to touch Ren&, and he's not able to touch me&.

But the feel of Ren's skin is definitely on my hands&.

His body heat seeps through to my skin and under it&.

Ren holds me with a frightening strength&, enough to make 
it hard to breathe&.&.&.

But it makes me happy&.

Feeling Ren's strong emotions for me&, I firmly hug him 
back&.

Right now&, we're both here&. The two of us&.
And that's the most important thing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ300", 3000, Center, Middle, "cg/ev/ev553蒼葉を抱きしめる蓮.jpg");
	Fade("絵ＥＶ300", 1000, 1000, null, true);
	Delete("絵ＥＶ200");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000630a01">
"Ren&, promise me this&. Promise me that you'll never think
 of disappearing ever again&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000640a06">
"Aoba&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000650a01">
"Promise me&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000660a06">
"&.&.&.I understand&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
Ren buries his face into my shoulder&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000670a06">
"I understand&, Aoba&. I promise&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000680a01">
"&.&.&.Okay&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("絵ＥＶ300", 500, null, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
I slowly move away and look into Ren's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu蓮_通常バグ_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
Inside of his amber eyes&, I see a dim twinkle&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/3000690a01">
"Now&, let's go&. Everyone's waiting on the other side&."

{	St("C",740, @0,@0,"bu蓮_通常バグ_normal2");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/3000700a06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//	DeleteFw();
//	DeleteAllSt(200,true);

	Wait(300);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
I grab Ren's hand&, nod to him&, and close my eyes&.

{
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I concentrate&, thinking of the two of us rising up from 
the ground&.

Higher&, higher&.&.&.

I picture the image of breaking through an invisible wall&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);

/*
	ClearFadeAll(3000, true);

	CreateColorSP("絵色黒", 5000, "000000");

	Wait(2000);

	CreateSE("SE01","se環境_自然_波01L");
	MusicStart("SE01",3000,600,0,1000,null,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/bg210011_2_暴露海と砂浜.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 1030, 1030, null, true);
	CreateTextureSP("絵背景EF", 100, Center, Middle, "cg/bg/bg210011_2_暴露海と砂浜.jpg");
	Request("絵背景EF", Smoothing);
	Zoom("絵背景EF", 0, 1030, 1030, null, true);
	Fade("絵背景EF", 0, 1000, null, true);
	Fade("絵背景", 0, 500, null, true);

	DrawEffect("絵背景EF", 0, "Ripple", 200, 200, null);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(3000,true);

	FadeDelete("絵色黒", 2000, null, true);

	dm5530_SE_LOOP();

	Wait(1500);
*/

	ClearFadeAll(2000, true);
	CreateColorSP("絵色黒", 5000, "000000");

	Wait(1000);

	CreateColorSPadd("絵色白", 3000, "FFFFFF");

	CreateTextureSP("絵ＥＶ200", 200, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	CreateTextureEXadd("絵ＥＶ201", 201, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	LastfireOGMIX("@絵ＥＶ201","プロセスファイヤー");

	CreateSE("SE01","se環境_自然_波01L");
	MusicStart("SE01",3000,400,0,1000,null,true);

	Wait(1500);

	CreateVOICE("蒼葉","dm02/2000070b01");
	$SETime01 = RemainTime("蒼葉")/3*2;
	CreateVOICE("蓮","dm02/2000080c03");
	$SETime02 = RemainTime("蓮")/3*2;
	MusicStartSet("蒼葉",1000,-200,1000,null,false);
	MusicStartSet("蓮",1000,200,1000,null,false);

	CreateProcessEX("プロセスごにょごにゅ", "Proc_dm5530scr_01Act");
	Request("プロセスごにょごにゅ", Start);

	FadeDelete("絵色黒", 1500, null, true);

	Fade("絵色白", 3000, 100, null, true);

	Wait(1500);

//※演出：父の夢
//※ＳＥ：静かな波の音

//※父と初めて会った海辺を表示。静かな波の音。
//他に音はしない。
//逆光になっている父の影。
//※全て演出での表現を希望ですが、素材が足りないなどでしたら描写を入れます。

//※dm0220で録った音声を使用。
//※↓以下はほとんど聞こえないくらいの音量で、SEとしてループさせます。
//頭の中で複数がヒソヒソ絶え間なく会話してる感じです。

//幼少／ＳＥ用素材
//【白蒼葉】
//<voice name="白蒼葉" class="白蒼葉" src="voice/dm55/3000710b01">
//「ダメだ。コイツには近寄るな。こんなヤツを信じるな。俺の言うことを聞けよ。コイツは危ない。こんなヤツより俺を信じろ」

//※幼少／ＳＥ用素材
//【蓮（子供）】
//<voice name="蓮（子供）" class="蓮（子供）" src="voice/dm55/3000720c03">
//「彼を信じて。彼は必ず蒼葉の力になってくれる。彼の言うことに耳を傾けて。大丈夫、俺がいる。何も怖いことはない。大丈夫だから」

//おがみ：SEループ演出

//※dm0220で録った音声を使用。
//※以下、音声加工をして使用
//（ところどころ聞こえない感じに）

	SetVolumeEX("SE01", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//It's not scary, so leave your own world
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm55/3000730b17">
"&.&.&.&.-ry, your&.&.&. -ld&."
//It should be this unidentifyable from the full line in the comments

//It'll be fine&. You can always destroy it&.
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm55/3000740b17">
"&.&.&.-ne&.&.&.y&.&.&.can&.&.&.al- it&."

//You can destroy it and then make a new one afterwards&. The possibilities are endless&.
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm55/3000750b17">
"&.&.&.-roy&.&.&.th&.&.&.world&.&.&.-less&.&.&."

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：夢終わり
//※演出：自分の中からノイズたちのライムフィールドへ戻る

//	dm5530_SE_LOOP_Delete(2000);
//	Wait(1000);
//	SetVolumeEX("SE*", 2000, 0, null);
//	ClearFadeAll(1500, true);
//	Wait(2000);

	Wait(1500);

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("蒼葉", 3000, 0, null);
	SetVolumeEX("蓮", 3000, 0, null);
	Fade("絵色白", 3000, 1000, null, true);

	ClearFadeAll(2000, true);

	Wait(2000);

//※次ファイル["dm5540_vs.nss"]

}