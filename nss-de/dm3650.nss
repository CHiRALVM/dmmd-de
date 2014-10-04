//<continuation number="210">
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


scene dm3650.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	$GameName = "dm3660.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm3650.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -472, -508, "cg/bg/l/bg304091_5_東江タワー中ホール_l.jpg");

	Delete("上背景");
	FadeDelete("絵色白", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
What was that just now&.&.&.!?

Something just shot out&.&.&.?

No&.&.&.

Did I fail&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：３
//頭痛エフェクト(0)
$HALevel=3;
	HAFade(1000, 0,true);

//	Wait(500);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000010a01">
"&.&.&.Tch!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
My head hurts&.
But not too much&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("絵背景100", 500, null, true);
}
I get up&, having gone pale&, and look towards Mink&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000020a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
His usual cool light returns to his eyes&, his pupils wide&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,700,0,700,null,false);

	St("C",740, @0,@0,"buミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Mink&, who was leaning over&, starts to sit up&.

I didn't&.&.&. fail?

But I'm in Mink's head&, how&.&.&.

&.&.&.&.&.

I don't really know what's going on anymore&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//cono「演出：暴露シーンの演出ができた後、ここに回想等入れる？」

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/ev/ev364ミンク捕縛.jpg");

	CreateColorSP("回想色", 5000, "624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
But I&.&.&.

Learned of Mink's "true wish" with Scrap&.

What Mink wanted&, and what I wanted to know so much&.

{
	CreateTextureEX("回想1001", 1001, Center, Middle, "cg/ev/m/ev364ミンク捕縛a_m.jpg");
	Move("回想1001", 500, @100, @0, Dxl3, false);
	Fade("回想1001", 500, 1000, null, true);
	Delete("回想1000");
}
Mink kept looking at me with a solid gaze&.

It must have been what caused me to understand&.

{
	CreateTextureEX("回想1002", 1002, Center, Middle, "cg/ev/l/ev364ミンク捕縛a_l.jpg");
	Move("回想1002", 500, @200, @0, Dxl3, false);
	Fade("回想1002", 500, 1000, null, true);
	Delete("回想1001");
}
It's&.&.&.<k> "death"&.

The only thing that waits for him after he reaches his 
goal&.&.&. is his death&.

He never wished for anything else than revenge for Toue 
taking away his entire family&.

When they were all massacred&, Mink probably&.&.&.

His heart probably stopped there&.

So Mink's final journey would be to have revenge on him&.

And after that&, he had no other aspiration&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("回想1003", 1003, Center, Middle, "cg/bg/bg204011_3_暴露ミンク故郷草原炎上.jpg");
	Fade("回想1003", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
He must have been torn apart&.

He was right next to Toue&, and that guard's song&.

It's likely that our consciousnesses were engulfed by 
awful memories from the past because of that song&.

I released Mink from that curse when I used Scrap&.

And that's when he was definitely freed&.

"You can move&."

When I said that&, a single chain on Mink broke&.

However&.&.&.

That's "all" the curse he was burdened with&.

Everything else was Mink refusing me himself by those 
chains&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
And when I understood that&, despair was born somewhere 
inside of me&.

That feeling was there&.

I wonder if it's because of Mink's way of speaking&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");

	FadeDelete("絵板写２", 500, null, true);

//※頭痛レベル：ここから３
//頭痛エフェクト(0)
$HALevel=3;
	HAFade(1000, 0,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
&.&.&.My head hurts&.

The ridges of my brain feel as if they're squirming 
around&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000040a05">
"&.&.&.What an ugly mug&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
While frowning in pain&, the corners of Mink's mouth 
faintly lift into a smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000050a01">
"&.&.&.Huh?"

{
	St("C",740, @0,@0,"buミンク_通常_smile");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000060a05">
"It's a face with everything in it&. Fatigue&, pain&,
 impatience&, and hopelessness&."

{
	Fw("fw蒼葉_通常_hard");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000070a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Mink&.&.&. should know everything by now&.

That I know his true wish now by using Scrap&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000080a01">
"&.&.&.Are you really okay with that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Staggering over the pain&, I look at Mink&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000090a01">
"Is that really&.&.&. a way to live?"

{
	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000100a05">
"&.&.&.I can't think of any other way&."

{
	Fw("fw蒼葉_通常_hard");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000110a01">
"But&.&.&."

{
	St("C",740, @0,@0,"buミンク_通常_normal");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000120a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
Mink stares at me in silence&, holding my arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常正面_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000130a05">
"&.&.&.I was thinking about something earlier&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000140a01">
"&.&.&.&.&."


{
	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000150a05">
"You and I have the same scent&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000160a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000170a05">
"The exact opposite of the scent of life&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000180a01">
"You mean&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Mink slightly narrows his eyes and lets go of my arm&, 
facing his body towards the door I came in from&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000190a05">
"Let's go&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/5000200a01">
"&.&.&.Where?"

{
	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/5000210a05">
"We're going after Toue&. He's upstairs&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Saying that&, Mink bursts into a sprint&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
With a suffocating feeling of not being able to do a 
thing&, I follow after his back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm3660.nss"]

}
