//<continuation number="490">
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


scene dm0844.nss_MAIN
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
	#ev084ベランダのクリアと蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0850.nss";

}


scene dm0844.nss
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
//クリアの場合
//=========================

	SoundPlay("@dm020b",0,200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I look through the curtains of a closed window&.

I think I'll get some outside air&.

I get out of bed and walk up to the window&.

I open up the curtains&, but suddenly stop&.

I hear something&.

&.&.&.A song?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉自室窓_開閉01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104041_3_蒼葉宅ベランダ");
	FadeBG(500,true);

	SetVolumeEX("@dm*", 1000, 0, null);

	Wait(500);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I peek through the curtains out to the veranda&.

But no one's there&. Was it my imagination?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景200", 200, -546, -103, "cg/bg/l/bg104041_3_蒼葉宅ベランダ_l.jpg");
	Move("絵背景200", 500, @0, @50, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400020a04">
"Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400030a01">
"Whoa!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵背景200", 250, null, true);

	CreateSE("SE01","se人体_足音_着地01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 18, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I hear a voice from above and something leaps onto the 
veranda&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400040a01">
"&.&.&.Clear!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	St("C",740, 162, 550,"fuクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	Move("@StNameC/C*", 400, 162, -84, Dxl1, true);

	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【クリア】※漫符：
<voice name="クリア" class="クリア" src="voice/dm08/4400050a04">
"Yes&. It's me&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400060a01">
"You surprised me&.&.&. Were you on the roof?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400070a04">
"Yes&. I went up on the roof and sang a song&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400080a01">
"A song? Wait&, so that was you singing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400090a04">
"Yes&. It was the Jellyfish song&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400100a01">
"Jellyfish song?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400110a04">
"Yes&. Grandpa&, the one I used to live with&, talked about
 jellyfish often&, so I made a song&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】※漫符：ぽわわ
<voice name="クリア" class="クリア" src="voice/dm08/4400120a04">
"Jellyfish are really like water&. But they're still such
 wonderful and interesting living creatures all the same&."

//【クリア】※漫符：
<voice name="クリア" class="クリア" src="voice/dm08/4400130a04">
"I wonder if jellyfish can sleep and dream like others&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.&.&.

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400140a01">
"&.&.&.I guess&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Clear is almost speaking in riddles and it confuses me&.

I don't think he's kidding&, though&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);
}
Clear stands next to me and takes something out of his 
pocket&.

&.&.&.That umbrella again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se物体_傘_開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ100", 100, 0, 0, "cg/ev/l/ev084ベランダのクリアと蒼葉_l.jpg");
	Move("絵ＥＶ100", 1000, 0, -157, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400150a01">
"Why do you keep that around?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400160a04">
"Is it wrong to have it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400170a01">
"No&, it's fine&.&.&. but why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400180a04">
"I thought the stars looked like they were about to fall&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400190a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵ＥＶ150", 150, -473, -182, "cg/bg/l/bg104041_3_蒼葉宅ベランダ_l.jpg");
	Move("絵ＥＶ150", 1500, -1014, -182, Dxl1, false);
	Fade("絵ＥＶ150", 1500, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I look up to the sky&, but there aren't any stars at all&.
All I can see are the lights of the illegal construction 
sites&.

Well&, I guess I was wrong to expect a real answer out of 
this guy&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ150", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400200a04">
"By the way&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ102", 102, Center, Middle, "cg/ev/ev084ベランダのクリアと蒼葉.jpg");
	Move("絵ＥＶ100", 500, @-80, @0, Dxl1, false);
	Fade("絵ＥＶ102", 500, 1000, null, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400210a01">
"Hold up&. You need to stop calling me that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【クリア】※漫符：？
<voice name="クリア" class="クリア" src="voice/dm08/4400220a04">
"Why is that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400230a01">
"It's kind of creepy&.&.&. Just Aoba is fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400240a04">
"No&, Master is Master&. So I think I will call you Master&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400250a01">
"&.&.&.Okay&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400260a04">
"Master is Master&, but Clear is the name Grandpa gave to
 me&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400270a01">
"Grandpa? The one you were talking about?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400280a04">
"Yes&. However&, he passed away&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400290a01">
"I see&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ103", 103, 0, -107, "cg/ev/l/ev084ベランダのクリアと蒼葉_l.jpg");
	Move("絵ＥＶ103", 1000, 0, -157, Dxl1, false);
	Fade("絵ＥＶ103", 1000, 1000, null, true);
	Delete("絵ＥＶ102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400300a04">
"A long time ago&, Grandpa and I lived near the garbage dump in the Northern District&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400310a01">
"Garbage&.&.&. A trash treatment center&, huh? So you're
 familiar with that area?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400320a04">
"Yes&. And&, Master&. I said it earlier&, but-"

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400330a01">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400340a04">
"It's about the other day&, when we went to go save
 Mizuki-san&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400350a04">
"You were so cool back then&, Master&. I got excited just
 from watching you&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400360a01">
"Cool&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400370a04">
"You were as cool as you were when I took you back to the
 shop&, my very own&, very cool Master&. Now&, you're&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ103", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Clear takes a glance at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuクリア_通常マスクあり傘_normal");
	FadeSt("C",200,true);

	CreateSE("SE01","se擬音_コミカル_キュピーン01");

	ClearComicNext(20001,0, 0,8,"fu");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【クリア】※漫符：目元にキラ？
<voice name="クリア" class="クリア" src="voice/dm08/4400380a04">
"You're cool right now too&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400390a01">
"You know&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
He obviously had to backtrack there&.&.&.

I'm flattered&, but what Clear said puzzles me&.

That I'm cool&.&.&. What does he mean by that?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400400a04">
"I'll be here with you from now on&, Master&. I'll protect
 you&."

//【クリア】※漫符：
<voice name="クリア" class="クリア" src="voice/dm08/4400410a04">
"So Master&, please take care of me from now on too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
Clear closes his umbrella and gives a polite bow&, leaning 
nearly 90 degrees&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400420a01">
"&.&.&.So you're still going to call me Master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I instinctively make a bitter smile and nod&.

He's really weird&, but he doesn't seem like a bad guy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400430a04">
"Master&, please go to bed soon&. It'll be tomorrow before
 you know it&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400440a01">
"You're right&. What about you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400450a04">
"If you'll pardon me&, I think I'll go sing on the rooftop
 for a little while longer&."

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400460a01">
"Be careful of the tiles&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400470a04">
"Thank you very much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1400,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Clear bows to me once again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4400480a01">
"Later then&. Make sure not to fall off&, either&."

{
	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm08/4400490a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);

	SoundPlay("@dm020b",0,300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
I go back into my room and close the curtains to the 
veranda&.

I lie on my bed&, and hear a faint sound of a song from the window&.

It's a gentle&, soft voice&, and it sounds like a lullaby&.

It's awfully relaxing&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
My bad mood gradually turns into a feeling of relaxation&, 
and I silently close my eyes&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(3000);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm0850.nss"]

}
