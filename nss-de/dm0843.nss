//<continuation number="290">
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


scene dm0843.nss_MAIN
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0850.nss";

}


scene dm0843.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//=========================
//Mink's
//=========================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I get out of bed and leave my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104011_5_蒼葉宅玄関消灯");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
While thinking about taking a stroll outside and getting 
some fresh air&, my footsteps echo as I go down the stairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104001_3_蒼葉宅前通り玄関消灯");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I walk in the entryway and put on my shoes&, open the door&, then leave&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, -115, -373, "cg/bg/l/bg104001_3_蒼葉宅前通り玄関消灯_l.jpg");

	SetShade("絵背景", MEDIUM);

	CreateStencil("マスク１",1000,Center,InBottom,128,"cg/st/stミンク_通常_normal.png",false);
	CreateColorSP("マスク１/色１", 1000, 0, 0, 800, 600, "BLACK");

	SetAlias("マスク１","マスク１");

	Move("マスク１", 0, @0, @40, null, true);
	DrawTransition("@マスク１/色１", 0, 0, 500, 500, null, "cg/data/slide_02_00_0.png", true);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I walk down the street and notice a person leaning on the 
fence nearby&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演出", 2000, -512, 0, "cg/bg/l/bg104001_3_蒼葉宅前通り玄関消灯_l.jpg");
	Request("絵演出", Smoothing);

	Zoom("絵演出", 0, 1200, 1200, null, true);
	Move("絵演出", 0, @-200, @-100, null, true);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,700,0,1000,null,true);

	BezierMove("絵演出", 2500, (-512,0){-100,-70}{-250,-240}(-300,-250), AxlDxl, false);
	FadeDelete("絵板写", 500, null, true);

	Wait(1000);

	SetVolumeEX("SE*", 1000, 0, null);
	FadeDelete("絵演出", 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I hear the sound of flapping wings&, and see a giant bird 
resting on a figure's shoulder&.

That bird&.&.&. is that a cockatoo?

Wait&, isn't that Mink over there?

I take a better look and see smokey white fumes dissolve into the air&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	Delete("マスク１");
	Delete("マスク１/色*");
	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Mink&.&.&.

To be honest&, he's the last guy I want to see right now&.

I reflexively turn back to my house&, but I stop&.

It's about Mink&. Hadn't I already noticed that when I left the house?

If I go back now&, it'll be like I flat out ignored his 
being there&, which is kind of rude&, I guess&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, -115, -373, "cg/bg/l/bg104001_3_蒼葉宅前通り玄関消灯_l.jpg");

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 1000, 1000, null, true);

	Wait(500);

	SetVolumeEX("SE*", 0, 0, null);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",300,true);

	Wait(500);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300010a01">
"&.&.&.What are you doing here?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300020a05">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I know that&.&.&. but I can't keep this conversation going&.

I regret not being able to talk to him&.

I think I should just go back home already&.

But I can't just walk away&, can I&.&.&.

I need something to talk about&.&.&.

He's not even a type of person who'd respond to 
conversation either&.

His personality isn't even all that great in the first 
place&.

And he always has a tense air to him&. My thoughts start to wander off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.But&.

Granny was saved because Mink was there&.

He knew about where her kidnappers were&, and we were able 
to get there in time&.

And he fulfilled his promise to help save her too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
When I think about it&, I should at least thank him once&.

No matter what he's like&, the fact that he saved her will 
never change&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300040a01">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I speak to Mink&, but he doesn't even look my way&.

&.&.&.Whatever&. I'm used to this by now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300050a01">
"Uh&.&.&. Thanks for helping me save Granny&. It would've been
 impossible without you&. And you even stayed afterwards&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Mink takes a sidelong glance at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300060a05">
"I'm no volunteer worker&, forget it&. It's all you from now
 on&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock2",4300,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300070a01">
"I'd never forget it&. When you demand things&.&.&. Your voice
 is really powerful&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300080a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Mink's eyes went back to staring at the sky&, and he puts 
his pipe to his mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景*", 500, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I lean against the fence&, only a little closer to Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300090a01">
"It's just like you said before&. My voice can affect 
 people&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300100a05">
"I didn't believe it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300110a01">
"That doesn't matter&.&.&.Instead of being plain unbelievable&,
 Granny's words just left me with a weird feeling&. But you
 understood before she even said it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300120a01">
"Anyway&, how'd you even know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Mink raises his head and again stares into another empty 
space&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300130a05">
"&.&.&.I know how vocal cords work&. Yours are definitely not
 like a normal human being's&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300140a01">
"Vocal cords&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300150a05">
"You don't remember it&, but I realized when I heard your
 voice the first time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300160a01">
"Eh? Before we even met?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I'd never forget this giant of a guy&.&.&. But it's like he 
said&, I can't recall a thing about him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300170a05">
"I started looking for you then to make sure of what your
 voice was&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300180a01">
"So that's why I was your target from the start&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300190a05">
"It doesn't mean that you simply just hold that power and
 that's the end of it&. You realized it too&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300200a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
That's&.&.&. that's right&.

Just having this power isn't the only thing I can do with 
it&.

But still&, there's also the possibility that it'll go 
rampant and I'll end up hurting someone&. Just like a lethal
weapon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300210a05">
"It's something useful&. But if you don't use it then it's
as good as trash&. It's up to you how you choose to use it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300220a01">
"I don't think I even need this power&. I don't ever want to use it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300230a05">
"Then that's fine&. It's your choice&. But&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 500, 0, 0, "cg/bg/l/bg104001_3_蒼葉宅前通り玄関消灯_l.jpg");

	SetShade("絵背景", MEDIUM);
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 200, null, true);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,500,0,700,null,false);

	Wait(500);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	Wait(500);
	CreateSE("SE03","se物体_鎖_砕ける01");
	MusicStart("SE03",0,1000,0,500,null,false);
	SetVolumeEX("SE03", 400, 0, null);


	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",200,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Mink rises up and roughly grabs hold of my face&.

{
	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
His cockatoo spreads its wings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300240a05">
"You're going to use that power on whoever I want you to
 whether you like it or not&. Other than that&, it's up to
 you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300250a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
I look at his pair of cold eyes in front of me as they send
shivers down my spine&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300260a01">
"&.&.&.What do you want out of it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm08/4300270a05">
"There's no reason to tell you now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300280a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
	Delete("絵背景");

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,700,null,false);

	FadeDelete("絵板写", 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
Mink lets go and starts walking back towards the house&.

His large back disappears in the darkness of the night&.

While watching him&, I start to get caught up in my own 
thoughts again&.

Mink&.&.&. I was his target&, just a tool he could use&.

He never had the intention to cooperate from the start&.

But that's fine as long as I have this power&.

Mink kept his promise to me&.
So I'll repay him for that&.

I want to return the favor&, but&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4300290a01">
"&.&.&.I don't understand him at all&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Murmuring under my breath&, I head back home&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
I go upstairs to the second floor&, go back to my room&, and then get into bed&.

Unable to fall asleep&, I glare at the ceiling&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm0850.nss"]

}
