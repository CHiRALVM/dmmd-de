//<continuation number="40">
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


scene dm5260.nss_MAIN
{
	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret Path to Platinum Jail",true,true);

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
	#evf06洗脳にかかる旧人民区a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5270.nss";

}


scene dm5260.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
In the end&, morning came and I didn't get very much sleep&.

I pull up my sluggish body and leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(500,true);

	CreateSE("SE01","se物体_テレビ_オン");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I go sit on the living room sofa and watch TV&, I see 
coverage of the event still on the screen&.

A reporter describes a showy parade that had just passed 
through&, and then the image changes completely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEXadd("絵演効果", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	CreateTextureSP("絵演背景1000", 1000, -230, 0, "cg/bg/m/bg101011_1_旧住民区通り表_m.jpg");
	Fade("絵演効果", 0, 300, null, true);

	FadeDelete("絵板写", 500, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
What comes on the screen causes all of my drowsiness to 
disappear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/6000000a01">
"The Old Resident District&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
The scene&, plus its odd&, cheerful narration&, is even 
stranger than how it was yesterday&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//覇：以下プロセス化も考える
//※プラチナ・ジェイル万歳！の感性※収録

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 500, 1000, null, true);
	Delete("絵演効果");
	Delete("絵演背景1000");

	CreateTextureSPadd("絵テレビ枠", 1500, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	CreateTextureEX("絵演出", 1501, Center, Middle, "cg/ev/l/evf07プラチナジェイル笑顔_l.jpg");

	dm5220_TV_pro2(1000,4);
	dm5220_TV_pro(500,2);

	Move("@ⅡPro*", 0, 0, @0, null, true);

	Fade("絵テレビ枠", 0, 300, null, true);

	DrawEffect("絵演出", 40000, "MiddleWave ", 0, 1000, null);

	BezierMove("@ⅡPro*", 11000, (0,-144){-128,0}{-256,-144}{-384,-288}(-512,-144), null, false);

	CreateSE("SE01","se環境_ガヤ_ざわつき01L");
	MusicStart("SE01",3000,700,0,1000,null,true);

	Wait(500);

	Fade("絵色黒", 500, 0, null, true);

	Wait(1000);

	SetVolumeEX("SE*", 500, 1200, null);
	Fade("絵演出", 500, 1000, null, true);
	Wait(500);
	SetVolumeEX("SE*", 500, 700, null);
	Fade("絵演出", 500, 0, null, true);

	Wait(500);

	Move("絵演出", 0, -800, 0, null, true);
	SetVolumeEX("SE*", 500, 1200, null);
	Fade("絵演出", 500, 1000, null, true);
	Wait(500);
	SetVolumeEX("SE*", 500, 700, null);
	Fade("絵演出", 500, 0, null, true);

	Wait(500);

	Move("絵演出", 0, -600, -500, null, true);
	SetVolumeEX("SE*", 500, 1200, null);
	Fade("絵演出", 500, 1000, null, true);
	Wait(500);
	SetVolumeEX("SE*", 500, 700, null);
	Fade("絵演出", 500, 0, null, true);

	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);
	Fade("絵色黒", 500, 1000, null, true);

	Delete("ⅡPro*");
	Delete("絵演*");

	SoundPlay("@dm006",0,450,true);

	Wait(500);

	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
Everyone&.&.&. is smiling&.

They're not jumping around in joy&, but on their faces are 
the same smiles&, as if they'd all been given similar masks&.

And their eyes&. Their eyes are empty&.

Eyes looking nowhere&, smiles frozen on their faces&.

On the screen&, people are yelling "Long live Platinum 
Jail!" and a reporter is going on about how "warm of a 
reception that the Old Resident District is giving"&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵テ*");
	Delete("絵一*");
	Delete("@プロ*");
	Delete("@Ⅱ*");
	Delete("@Pro*");

	FadeDelete("絵板写", 500, Dxl1, true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/6000010a01">
"This is complete bullshit&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
All of this&.&.&.
It's exactly how it was yesterday&.

Is it because of that music Haga-san was talking about?

Haga-san&, Granny&, everyone&.&.&.
Are they really all right&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：コイル演出は後回し

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(346,47);


	//▼①コイル演出表示
	CoilStartFade();
	//▼③メールリスト表示１（通常表示）
	CoilMListFade();
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I check my Coil&, nearly passing out from worry&.

As I expected&, I don't find any replies to the messages I 
sent out yesterday&.

But I try to call someone anyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※電話繋がらない音

//	CreateSE("SE01","se物体_コイル_通信遮断01");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Wait(500);

	//■⑧コイル電話設置
	CoilPhone2_OutcallSet(368,30,"dm5260","Granny",false);
	//CoilPhone2_IncallSet(200,50,"ko0170","Delivery Works",false);

	//●『汎用』コイル移動２『CoilMove2(移動パターン,"指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対のみ
	CoilMove2(2,"CoilMList",500,600,150,Dxl1,false);

	//▼⑧コイル電話表示
	//最初からエラー
	$coilphone2Error=true;
	CoilPhone2_CallFade();
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.Not working&.
It really won't connect&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilAllDelete(300,-50,370);
	//○コイル待ち
	CoilWait();

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/6000020a01">
"Shit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
It's not that I think that they've all gone strange in the head&.

I actually think that Granny is okay&.

But&.&.&.

All of the anxiety and dread is quickly piling up&.

If the music affected all of them&.&.&.

Every worst-possible scenario fills my head despite my 
attempts to think of something else&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/6000030a01">
"Ren&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I stand up from the sofa and call out to Ren&, who is 
sitting by my feet&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/6000040a06">
"&.&.&.Roger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Ren looked up at me as if he wanted to say something&, but 
he just wagged his tail&. 

I get my outfit together and run out of Glitter&, Ren safe 
and sound inside of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm5270.nss"]

}
