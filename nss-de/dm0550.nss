//<continuation number="460">
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


scene dm0550.nss_MAIN
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
	$GameName = "dm0550sl.nss";

}


scene dm0550.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//※場面転換→ミンクの部屋へ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Mink faces me outside the room where I woke up just a 
while ago&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000010a01">
"Let me go&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
He enters the room and I shake my hands around to try to 
loosen his grip&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

	DeleteSt("C", 200,true);

	Wait(1000);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
He lets go of me and sits on the bed&.

I look into his eyes&, unable to figure out what he's 
thinking&.

I feel intimidated for a second&, but I return his gaze 
with a scowl&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 500, -846, 0, "cg/bg/l/bg106021_5_廃ビル部屋_l.jpg");
	SetShade("絵背景", MEDIUM);

	St("C",740, @0,@0,"fuミンク_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
He's the type of guy who could change in an instant and 
start hitting you all of a sudden&. That's him&.

I felt like I was investigating my overly calm oppenent&.

What he's thinking&, what kind of person he is&.&.&.
I'm searching for that in him&.

Just like prey looking into the eyes of the predator&.

That's why I can't show any weakness to him&. That's what I thought&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000020a01">
"&.&.&.What's your goal here? Why did you take me here?
 Where's Granny?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000030a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000040a01">
"Why did you beat him down back there? Wasn't he just
 following the orders from you to attack me in the first
 place? Why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000050a05">
"He was different&. I said no one could enter that room&.
 That was his punishment for disobeying&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock2",2900,"fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000060a01">
"Different&.&.&. It doesn't make a difference to me&. What are
 you going to do with me? Do you want to see me raped?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000070a05">
"&.&.&.Your most prominent trait is a lack of self-awareness&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000080a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	St("C",740, @0,@0,"fuミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000090a05">
"I'll only say this one more time&. I didn't beat that guy
 because he went in the room&. It was because he did it
 without asking permission&."

{
	St("C",740, @0,@0,"fuミンク_通常_serious");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000100a05">
"He was seduced by your voice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000110a01">
"&.&.&.My voice?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I want to say that he didn't even know what he was talking about&, but instead I swallow my words&.

That man had some clear attachment to my voice&.

&.&.&.But why does Mink know?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000120a05">
"I wondered why he would dare to disobey my orders in the 
first place&. I don't allow that&. Those are the rules here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000130a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
The more this conversation goes on&, the less I understand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000140a01">
"Why do you know&.&.&. about how my voice sounds?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000150a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_angry",1650,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000160a01">
"Answer me&. Tell me what happened to Granny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000170a05">
"I don't know&. You were my primary objective&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000180a01">
"Wha&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
His primary objective?
Then what about her?

My vision blanks out and Mink pulls something from his 
breast pocket and waves it around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ピルケースを振る
	CreateSE("SE01","se物体_ピルケース_ふる01");
	MusicStart("SE01",0,700,0,1500,null,false);

	Wait(500);

	St("C",740, @0,@0,"fuミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000190a05">
"It's this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000200a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
In Mink's hand is my medicine&.

I immediately reach out for it&, but he quickly pulls away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000210a01">
"Give it!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000220a05">
"Answer my question&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000230a01">
"It's just medicine for my headaches!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000240a05">
"Seems like you're not the kind of guy who gives convincing answers&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000250a01">
"Granny is a pharmacist&.&.&. And I don't know anything else&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000260a05">
"You're just like a junkie&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000270a01">
"Huh&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg106021_5_廃ビル部屋.jpg");

	DeleteAllSt(0,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,700,0,100,null,false);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Mink puts it back in his breast pocket and stands up from 
the bed&.

He opens the door&, and in the hallway there are people 
talking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※人を引きずってきてどさっと置く
//※足音_２人_ゆっくり歩く
	CreateTextureEX("絵背景190", 190, -200, -556, "cg/bg/l/bg106021_5_廃ビル部屋_l.jpg");
	Move("絵背景190", 500, -316, -556, Dxl1, false);
	Fade("絵背景190", 500, 1000, null, true);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 7, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Two men come into the room shortly after&.

They're dragging something along&, and they drop it off in  the room&.

&.&.&.They dropped off a person&.

They're two men dressed in black clothes&, face down on the floor&.

I take a better look at them&, and can tell that they're 
faintly breathing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000280a05">
"Look at their necks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Necks&.&.&.?

I examine the necks of the two men writhing on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateTextureEX("絵ＥＶ500", 500, Center, Middle, "cg/ev/evf01モルヒネ首もとにタグアート.jpg");
	Fade("絵ＥＶ500", 1000, 1000, null, true);
	CreateTextureSP("絵ＥＶ200", 200, Center, Middle, "cg/ev/l/evf01モルヒネ首もとにタグアート_l.jpg");

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000290a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
It's Morphine's tag art&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ200", 1000, @0, @100, Dxl1, false);
	FadeDelete("絵ＥＶ500", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
And even&.&.&.
Their previous tags have been painted out?

A different pattern barely shows through&.

This is&.&.&.
This must be my imagination&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000300a01">
"Dry Juice&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	Delete("絵演*");
	Delete("絵ＥＶ200");
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
One of the men rolls over on his side and I can see his 
face&.

&.&.&.I know him&.
This guy's from Dry Juice&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景190", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景190", 500, null, true);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000310a05">
"It seems they came to your house before we did&. Everyone
 else was already gone and these were the only two left&."

{	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000320a05">
"So now you know&. We have nothing to do with your
 grandmother&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000330a01">
"But she's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000340a05">
"I don't know&. We're tracking down the other members right
 now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000350a01">
"Really? Then&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000360a05">
"Before that&, we need to come to an agreement here&. I
 already told you earlier that you were my objective&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000370a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000380a05">
"I took you here because I needed to be sure about
 something&. I had the general gist of it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000390a05">
"You're going to do whatever I tell you to do&. Once you
 agree&, I'll help you with this stupid-ass job&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000400a01">
"My job&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000410a05">
"I'm saying I'll help you search for your grandmother&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000420a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
I find it hard to believe that he actually said that&.

He might've just set this whole thing up&.

He made me go through something awful; there's no way I 
could believe this&.

But even if he was lying&, there's no explaination why 
Morphine&.&.&. why this happened to Dry Juice&.

Why the tag art was painted over&.&.&. There's no way he 
could've conjured that up in such a short time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000430a05">
"If you don't believe me then you can go search for her by
 yourself&. Go ahead&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000440a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
It's frustrating&, but I can't think of any way to find her by myself&.

And if her disappearance had to do with Morphine&, I'd just be grasping at straws&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5000450a01">
"You said that I'm what you want&, but why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5000460a05">
"There's no reason to tell you now&. Just hurry up and
 decide if you'll accept my conditions&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0550sl.nss"]


//	ClearFadeAll(1000, true);

}
