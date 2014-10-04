//<continuation number="10">
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


scene dm5670.nss_MAIN
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5680.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB10=1;//回想用フラグ取得

}


scene dm5670.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu蓮_通常マントなし_normal");
	FadeSt("C",0,true);

	CreateTextureSP("絵背景2000", 2000, -516, -70, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");

	Delete("上背景");

	CreatePlainSP("絵板写", 5000);

	CreateMask("絵マスク", 2100, 0, 0, "cg/data/slide_04_00_0.png", false); 
	CreateTextureEX("絵マスク/絵演背景", 2050, -80, -570, "cg/bg/bg209011_2_暴露蒼葉教会外観見上げ.jpg");
	Zoom("絵マスク/絵演背景", 0, 1150, 1150, null, true);
	Request("絵マスク/絵演背景", Smoothing);
	Fade("絵マスク/絵演背景", 0, 600, null, true);

	CreateSE("SE鐘","se物体_鐘_鳴る01L");
	MusicStart("SE鐘",0,500,0,1000,null,true);

	FadeDelete("絵板写", 1500, null, true);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0009]
I hear the distant sound of bells&, ringing far&, far off 
in the distance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク*");
	FadeDelete("絵板写", 600, null, true);

	Move("絵背景2000", 1000, @0, @-50, Dxl1, false);
	FadeDelete("絵背景2000", 1000, null, false);

	Wait(1000);

	CreateSE("SE01","se擬音_効果_力白蒼葉消滅");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 3000, 0, null);

	CreateTextureEX("絵背景1000", 1000, Center, Middle, "cg/bg/bg210011_2_暴露海と砂浜.jpg");
	Fade("絵背景1000", 2000, 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Both of our bodies begin to turn transparent&.

&.&.&.It's time&.

{
	SetVolumeEX("SE鐘", 3000, 300, null);

	CreateSE("SE02","se擬音_精神_崩壊01L");
	MusicStart("SE02",3000,400,0,800,null,true);
}
The scenery&, with the evening sky&, the sandy beach&, and 
the waves&, were all shaking and falling apart little by 
little&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu蓮_通常マントなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/7000010a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ren reached out for my hand&. And I reached out for his&. 

{
	CreateSE("SE04","se人体_動作_叩く01");
	MusicStart("SE04",0,600,0,1400,null,false);

	SetVolumeEX("SE04", 150, 0, null);
}
As our hands began to fade away&.&.&. They still held each 
other&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE03","se擬音_精神_崩壊01L");
	MusicStart("SE03",3000,500,0,700,null,true);

	CreateTextureEX("絵背景5000", 5000, -516, -100, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	Move("絵背景5000", 1000, -516, -70, Dxl1, false);
	Fade("絵背景5000", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
To the ringing of the bells&, the dream world began to 
crumble&.

Until everything turned into rubble&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE0*", 3000, 0, null);
	SetVolumeEX("SE鐘", 2000, 900, null);

	CreateColorSP("絵白幕２", 10000, "WHITE");
	DrawTransition("絵白幕２", 3000, 0, 1000, 100, Dxl1, "cg/data/circle_02_01_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
And quickly enough&, a white light enveloped us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//回想時
		SetVolumeEX("@SE*", 2000, 0, null);
		ClearFadeAll(1000, true);Wait(2000);
	}else{

	Wait(3000);

	}

//※次ファイル["dm5680.nss"]

}
