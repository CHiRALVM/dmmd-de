//<continuation number="30">
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


scene dm1100.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Platinum Jail Secret Pathway",true,true);
	CoilMailAdd("dm1080a","Koujaku","(No Subject)",false,true);


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
	#bg302051_5_グリッターエントランス=true;
	#bg302021_5_グリッター居間=true;
	#bg302041_5_グリッター廊下=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1110.nss";

}


scene dm1100.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);
	Delete("上背景");

	CreateTextureSP("絵背景", 100, Center, -200, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateTextureSP("絵背景弐", 200, Center, 0, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateColorEXadd("絵背景上", 3000, "WHITE");
	Fade("絵背景上", 0, 1000, null, true);

	Move("絵背景弐", 3000, @156, @0, null, false);

	FadeDelete("絵色黒", 500, null, true);
	FadeDelete("絵背景上", 1000, null, false);

	Wait(2000);

	Move("絵背景", 3000, @-156, @0, null, false);
	FadeDelete("絵背景弐", 500, null, true);

	Wait(2000);

	FadeDelete("絵背景", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I walk through the doorway and the inside is astonishing&.

It's different from what I thought it would be&. The 
interior has a classical feeling to it&.

There's a large clock&, a table&, a sofa&, and all the 
furniture looks completely untouched&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/0000010a01">
"This is awesome&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I go up the staircase and check out the second floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
The stairs to the second floor go up to a living room&, 
where there's a TV&, another sofa&, and a small bar counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Down the long hallway are some rooms&. Most likely bedrooms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 500, 1000, null, true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);
	CreateTextureSP("絵背景", 100, Center, -200, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景", 500, @0, @-50, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);
	FadeDelete("絵黒幕", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
I'm done checking out the second floor and go back 
downstairs&, and sit on the sofa&.

I put all the fast food I bought on the table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I thought that the food here would be really expensive&, 
but it actually isn't that bad&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_紙_袋漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Now&, I wonder what it'll taste like&.

I take one bite of a hamburger&.

&.&.&.Mm&.
The meat's texture is different&.

I can't describe it exactly&, but it tastes like it's 
higher quality&.&.&. not that it makes a difference to me&.

With just one bite&, I miss the taste of the crappy 
hamburgers in the Old Resident District&.

While munching on my burger&, I check my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se物体_コイル_操作音02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(344,90);

	//▼①コイル演出表示
	CoilStartFade();
	//▼③メールリスト表示１（通常表示）
	CoilMListFade();
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
While I was waiting in line to get my food&, I sent Koujaku a message&, but he still hasn't replied&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilMList",300,500,370);
	//○コイル待ち
	CoilWait();

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/0000020a01">
"What's taking him?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
I flash back to the image of Koujaku with his back to me&, 
walking away with a girl in each arm and have iffy 
feelings about it&.

I want to speak with him about the special commemorative 
event&, too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/0000030a01">
"You aren't reliable and just mess around all the time&.
 Or something like that&, the idiot&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I grumble then silently clean my food off the table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);
	Wait(1000);

//※次ファイル["dm1110.nss"]

}
