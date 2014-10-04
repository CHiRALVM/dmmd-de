//<continuation number="170">
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


scene dm5270.nss_MAIN
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
	#bg304023_5_東江タワー通用口=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5280.nss";

}


scene dm5270.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304021_5_東江タワー前通り");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, Center, -44, "cg/bg/m/bg301011_5_プラチナジェイル大通り_m.jpg");

	Delete("上背景");

	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
An obvious aura of festivity surrounds the crowds of people
moving up and down the streets&. There's also an obvious
increase in the number of policemen&.

The policemen head towards the tower so the people don't 
get too close&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景100");

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	CreateTextureEX("絵背景101", 101, -512, -388, "cg/bg/l/bg304021_5_東江タワー前通り_l.jpg");
	Move("絵背景101", 500, @0, @-100, Dxl1, false);
	Fade("絵背景101", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
It doesn't look like the crowds have calmed down from 
yesterday&, and the entire tower is surrounded by security&.

I don't think I can get in by myself&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景101", 500, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000010a01">
"What'll we do&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：コイル演出は後回し

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);


	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル招待状セイ_BASE02.png");

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示１（通常表示）
	CoilPictFade();

	//○コイル待ち
	CoilWait();

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("２","cg/bg/l/bg001011_1_碧島全景_l.jpg");
	//○⑥ムーブ（中の画像に対して）『CoilPictMO("ナット名",秒数,値X,値Y,テンポ,待ち)』
	CoilPictMO("２",0,44,-576,Dxl1,true);
	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("２",0,1500,1500,Dxl1,true);

	//▽⑥追加画像表示
	CoilPictFadeCon("２");

	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥ズーム（中の画像に対して）『CoilPictZO("ナット名",秒数,値X,値Y,テンポ,待ち)』//初期ナットの指定は「初期」
	CoilPictZO("２",1000,1000,1000,Dxl1,true);

	//○コイル待ち
	CoilWait();
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I open the map from the invitation on my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000020a01">
"Ren&, is there a back entrance to the tower?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥ムーブ（中の画像に対して）『CoilPictMO("ナット名",秒数,値X,値Y,テンポ,待ち)』
	CoilPictMO("２",600,-143,-412,Dxl2,true);

	//○⑥地図専用特殊コマンド
	CoilPictIconFade(@15,@70);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/7000030a06">
"&.&.&.According to the map&, there appears to be a staff
 entrance on the opposite side of the tower&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("coilsound_move","se物体_コイル_システムタッチ");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//○⑥地図専用特殊コマンド
	CoilPictIconGo2("２",300,527,266,221,-583,2000,2000);

	//○コイル待ち
	CoilWait();
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000040a01">
"Around here&, huh&.&.&.? The security might be a little less
 tight there&, let's go check it out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,500,400);
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I don't have any time to waste&.
I head towards the other side of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304023_5_東江タワー通用口");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The tower's shadow darkened the staff entrance&, and there 
were only a few guards since people seldom came through&.

Two people were standing in front of a gate for letting in vehicles&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000050a01">
"&.&.&.I think I can take them if it's only them two&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/7000060a06">
"There seem to be only two of them&, but you should still be cautious&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000070a01">
"Gotcha&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("SE*", 200, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I pulled out the stun gun from my bag&.
//For once, the stun gun was actually used!

It's the one that Haga-san gave me right before I left the Old Resident District&.

There's a tall flower bed across from the gate&. If I go 
from that side&, I could probably make it work&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureEX("絵背景102", 102, -350, -187, "cg/bg/m/bg304023_5_東江タワー通用口_m.jpg");

	Move("絵背景102", 1000, @-50, @0, Dxl1, false);
	Fade("絵背景102", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I run over to the shadow of the flower bed&, my body bent 
over&, and hold my breath as I go up to one of the guards&.

I try for the perfect timing&, and&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,300,0,1500,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureEX("絵一枚絵", 1000, 0, -283, "cg/ev/l/ev900蒼葉蹴り汎用_l.jpg");

	CreateTextureSP("絵背景103", 103, -469, -450, "cg/bg/l/bg304023_5_東江タワー通用口_l.jpg");
	Delete("絵背景102");

	DrawDelete("絵黒幕", 150, 100, Dxl2, "slide_01_01_1", true);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵一枚絵", 450, -1024, 0, Dxl3, false);
	Fade("絵一枚絵", 0, 1000, null, true);

	Wait(200);

	FadeDelete("絵一枚絵", 200, Dxl1, true);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 3000);
	Shake("絵板写", 300, 30, 0, 0, 0, 500, Axl1, true);
	Delete("絵板写");

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm52/7000080e16">
"What!? &.&.&.Guh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

/*
	CreateTextureEXadd("絵電撃", 500, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	CreateTextureEXadd("絵電撃弐", 501, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	Zoom("絵電撃弐", 0, 1300, 1300, null, true);
	Rotate("絵電撃弐", 0, @0, @180, @0, null,true);

	CreateSE("SE01","se戦闘_スタンガン_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Shake("絵背景103", 500, 50, 50, 0, 0, 500, Dxl1, false);
	Zoom("絵電撃", 200, 1200, 1200, Dxl2, false);
	Fade("絵電撃", 100, 1000, Dxl1, true);
	Wait(50);
	Fade("絵電撃弐", 0, 1000, Dxl1, true);
	Wait(50);
	Zoom("絵電撃*", 200, 1000, 1000, Dxl2, false);
	FadeDelete("絵電撃*", 100, Dxl1, true);
*/

	CreateSE("SE01","se戦闘_スタンガン_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 3000);
	Shake("絵板写", 300, 0, 10, 0, 0, 500, Axl1, true);
	Delete("絵板写");

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwm警備B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm52/7000090e17">
"Hey! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1100,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I throw one of them down with a roundhouse kick&, and then 
zap the other's neck with the stun gun&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.Well&, I gave him a light shock&.
Is he okay? He's not dead&, right?

I think he'll be fine since this is a handmade stungun 
from Haga-san&, but&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000100a01">
"This is unreal&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/7000110a06">
"You surprised me as well&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000120a01">
"Me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景103", 500, @0, @-80, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
While quickly feeling the chest of the downed guard&, I 
look at Ren&, whose head is out of the bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/7000130a06">
"I didn't think you'd jump out like that&."

{	
	FwPro("fw蒼葉_通常_normal2",6900,"fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000140a01">
"Things like this depend on timing and force&. You'll lose
 if you don't have those&.&.&. Oh&, there it is&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I pull out the guard's ID card that was hanging around 
his neck&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1300,null,false);

	Move("絵背景103", 500, @0, @80, Dxl1, true);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000150a01">
"We can get in with this guy&, right? Let's go&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/7000160a06">
"&.&.&.Fists over words&, is it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cheese2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/7000170a01">
"Depends on the time and place&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I took the card in my hand and rushed over to the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※カード認証→ドアが開く
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se物体_コイル_操作音01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(300);

	CreateSE("SE01","se物体_コイル_操作音03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);

	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I held it up to the confirmation monitor&, and the door 
unlocked&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm5280.nss"]

}
