//<continuation number="2010">
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


scene dm2554h.nss_MAIN
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
	$GameName = "dm2560.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB05=1;//回想用フラグ取得

}


scene dm2554h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg107011_1_病院個室");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -210, -424, "cg/bg/l/bg107011_1_病院個室_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001780a03">
"It's hot&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001790a01">
"I'm dripping in sweat&.&.&. You doing okay?"

{
	SoundPlay("@dm012",0,450,true);
}
I think we overdid it&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
When I peeked at Noiz's face&, he looked at me back with 
feverish but tired eyes&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001800a03">
"Yeah&.&.&. It's probably okay&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001810a01">
"&.&.&.'That so&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001820a03">
"Besides-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(800);

	CreateSE("SE01","se人体_動作_キス01");
	MusicStart("SE01",0,450,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
Noiz slightly cast his eyes down but looked at me again 
after pecking my lips&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001830a03">
"It was really good&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001840a01">
"&.&.&.Mn&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
It was awkward to hear this face to face so I moved my 
eyes somewhere else&.

That was pretty straightforward&, and honest&, and&.&.&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001850a03">
"What about you?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001860a01">
"Eh?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001870a03">
"Was it not that good?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001880a01">
"No&, it's not like&.&.&. it wasn't&, but&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001890a03">
"Hmm&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
Noiz looks at me with a grin&.

He's really getting a kick out of my reactions&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001900a01">
"&.&.&.I'm gonna take it out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0571]
I turn my face away to hide my embarrassment when I lift 
my hips up&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001910a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0572]
And in the time I was holding my breath to the feeling of 
taking it out&.&.&.

Something lukewarm dripped down my thighs from my ass&.

Uwah&.&.&.!

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001920a01">
"Fuck&.&.&. I need something to wipe this off&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE01", 1000, 0, null);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001930a03">
"Here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ13");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
When Noiz took out a tissue from the tissue box on his 
bedside and wiped it off&, I could feel his eyes on me&.

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001940a01">
"What?"

{
	Fw("fwノイズ_通常病院着_smile");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001950a03">
"Shouldn't you wipe out the inside too?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0581]
Noiz impishly grins&.

{
	Fw("fw蒼葉_通常_shy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001960a01">
"&.&.&.Injured people like you should just get a good rest&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_叩く01");
	MusicStart("SE01",0,700,0,1800,null,false);
	SetVolumeEX("SE01", 100, 0, null);

	Wait(500);

	Fw("fwノイズ_通常病院着_pride2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001970a03">
"Ouch-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0591]
I flicked Noiz's forehead and pulled out some more tissues&.

There's globs of white semen all over Noiz's stomach&.
It was from me earlier&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);
}
Noiz flinches when I take a tissue and start to wipe his 
abdomen&.

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5001980a01">
"Hey&, don't move&. You can't wipe yourself off&, can you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE01", 2000, 0, null);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fwノイズ_通常病院着_laugh");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5001990a03">
"Haha&, that tickles&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
When I saw his face&.&.&. I felt a tinge of something deep in my heart&.

That's a real smile&.
The first one of his I've ever seen&.

I guess he really is a cute guy&.

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5002000a01">
"&.&.&.Okay&, done&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景101", 101, 71, -431, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	Request("絵背景101", Smoothing);
	Zoom("絵背景101", 0, 1500, 1500, null, true);
	Move("絵背景101", 1000, @0, @-50, Dxl1, false);
	Fade("絵背景101", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
When I go to throw away the used tissues&, I make eye 
contact with Noiz&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1400,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	Wait(1000);

	CreateSE("SE02","se人体_動作_キス01");
	MusicStart("SE02",0,500,0,1400,null,false);
}
He still had on that smile&, so I pulled his lips to mine 
and softly kissed him&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5002010a03">
"&.&.&.Nm&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5002011a01">
"&.&.&.Kid&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5002012a03">
"What was that for?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5002013a01">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0603]
Noiz looked a little ticked&, but his grin came right back&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5002014a03">
"We'll do some different things when I get out of here&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5002015a01">
"&.&.&.You perverted brat!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,500,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0604]
I stirred up Noiz's hair by ruffling it with my hands&.

I never thought about it before&, but he's shown a lot more emotions lately&.

That honestly makes me happy&.

Holding onto that small joy&, the days passed on calmly in 
a mere blink of an eye&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	if($RECRIB_PLAY==1){//回想時
		ClearFadeAll(1000, true);Wait(2000);
	}else{
	ClearFadeAll(3000, true);
	}

//※次ファイル["dm2560.nss"]

}
