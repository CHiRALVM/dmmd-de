//<continuation number="270">
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


scene dm3730_vs.nss_MAIN
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
	$GameName = "dm3740.nss";

}


scene dm3730_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
/*
	$SYSTEM_effect_lens_curvature = 8000;
	$SYSTEM_effect_lens_distance = 10;

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	CreateColorEXadd("絵色黒", 5000, "FFFFFF");

	CreateEffect("上背景", 30000, Center, Middle, 1024, 576, "Plain");
	CreateEffect("上背景2", 30000, Center, Middle, 1024, 576, "Plain");
	CreateEffect("上背景3", 30000, Center, Middle, 1024, 576, "Plain");
	CreateEffect("上背景4", 31000, Center, Middle, 1024, 576, "Plain");
	Request("上背景4",Passive);
	SetVertex("上背景*", 0, 0);

	WaitKey();
	SetBlur("上背景*", true, 3, 500, 600, false);
	WaitKey();

	FadeDelete("上背景4", 1000, null, false);
	Zoom("上背景", 4000, 1100, 1100, Axl1, false);
	Zoom("上背景2", 4000, 1300, 1300, Axl1, false);
	Zoom("上背景3", 4000, 1500, 1500, Axl1, false);
	Fade("絵色黒", 4000, 1000, Axl3, true);
	WaitKey();

	Move("@OnBG*", 3000, @0, @500, null, true);

	WaitKey();
*/
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);

	Wait(500);

//場面切替／ミンク視点

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",300,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000010b02">
"&.&.&.I wonder if they were having a scuffle&."

{	Fw("fwミンク_戦闘_pinch");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000020a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000030b02">
"You probably don't want to try anything now&. Even if you
 were to kill me here&, you would live a life with your
 blood and kin lost&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000040b02">
"Surely it must be an infinite hell&. Regardless of whether
 you're dead or alive&.&.&. That'd make no difference in
 whether I would have caught you or not&."

{	Fw("fwミンク_戦闘_pinch");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000050a05">
"&.&.&.In the end&, that's still your objective&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000060b02">
"The fact that I've won means that fate is on my side&. So I will continue to follow down that path&. That's it&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000070b02">
"You're the only survivor of your people&.&.&. A person who
 escaped from my hands&. But you were originally supposed
 to stay in them&."

//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000080b02">
"That is something that had been planned out from the
 start&. Do you have any issues with that?"

{	Fw("fwミンク_戦闘_pinch");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000090a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000100b02">
"It must be frustrating&.&.&. You should just call it fate
 yourself&."

{	Fw("fwミンク_戦闘_pride");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000110a05">
"&.&.&.&.&.&.Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_戦闘_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000120a05">
"Heh&.&.&. Hahaha!"

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000130b02">
"What is it?"

{	Fw("fwミンク_戦闘_pride");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000140a05">
"&.&.&.Just as I thought&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※それまで床に片膝をついていたミンクだが、ゆっくりと立ち上がる。
	PrintGO("上背景", 5000);
	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,850,0,1000,null,false);

	FadeDelete("上背景", 800, null, true);

	Wait(200);

	St("C",740, @0,@20,"stミンク_通常正面_normal");

	Move("@StNameC/C*", 500, @0, @-20, Dxl1, false);
	FadeSt("C",500,true);

	Wait(200);

{	Fw("fw東江_通常_serious");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000150b02">
"&.&.&.What do you mean? Was it not effective enough?"

{	St("C",740, @0,@0,"stミンク_通常正面_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000160a05">
"Oh&, it's effective&. Your 'seed' is well rooted in me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stミンク_通常正面_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000170a05">
"I've been plunged into the darkness&, the despair swelling
 up with no way to stop it&."

{	St("C",740, @0,@0,"stミンク_通常正面_angry");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000180a05">
"But there's someone who planted their 'seed' in there
 first&."

{	Fw("fw東江_通常_serious");}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000190b02">
"&.&.&.&.&."

{	Fw("fw東江_通常_normal2");}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000200b02">
"&.&.&.Aoba-kun?"

{	St("C",740, @0,@0,"stミンク_通常正面_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000210a05">
"And the person in question didn't even have the intention
 of doing it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stミンク_通常正面_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000220a05">
"The overemotional words he threw in there are far better
 than your little 'seed'&. An overwhelming&, genuine&,
 authentic win over you&."

{	Fw("fw東江_通常_think");}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/3000230b02">
"&.&.&.Hmph&. I see&."

{	St("C",740, @0,@0,"stミンク_通常正面_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000240a05">
"I'll tell you what the 'seed' he planted in me was&."

{	St("C",740, @0,@0,"stミンク_通常正面_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000250a05">
"That I'm alive&."

{	St("C",740, @0,@0,"stミンク_通常正面_angry");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000260a05">
"That I am able to die because I'm alive&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(16);
//あきゅん「↓：これ通りに画面組めないので、出来たらミンクの背中カットと奥に見える」
//※ミンク、東江の方へゆっくりと近付いていく。
//　大きめサバイバルナイフを取り出す。
	CreateTextureEX("bg1", 100, -462, Middle, "cg/bg/bg304122_5_東江タワー東江の間.jpg");
	CreateTextureEX("bg2", 200, center, 0, "cg/bg/bg304122_5_東江タワー東江の間.jpg");
	CreateTextureEX("ev1", 100, -1250, Middle, "cg/ev/x/ev375ミンクの祈り_x01.png");
	CreateTextureEX("ev2", 200, -80, -240, "cg/fu/fuミンク_戦闘_normal.png");

	DeleteAllSt(200,true);

//	CreateTextureEX("ev3", 200, -80, -270, "cg/fu/fuミンク_通常正面_normal2.png");

	SetShade("bg1", HEAVY);
	SetShade("bg2", HEAVY);

	Zoom("bg1", 0, 2000, 2000, null, true);
	Zoom("bg2", 0, 1300, 1300, null, true);
	Zoom("ev1", 0, 500, 500, null, true);
	Zoom("ev2", 0, 1200, 1200, null, true);
//	Zoom("ev3", 0, 1200, 1200, null, true);

	Request("bg1", Smoothing);
	Request("bg2", Smoothing);
	Request("ev1", Smoothing);
	Request("ev2", Smoothing);
//	Request("ev3", Smoothing);

	CreateSE("SE00","se人体_足音_一歩01");
	CreateSE("SE00a","se人体_動作_衣擦れ12");
	CreateSE("SE01","se戦闘_動作_ナイフ構える01");
	MusicStart("SE00",0,700,0,1000,null,false);
	MusicStart("SE00a",0,700,0,1000,null,false);

	Fade("bg1", 200, 1000, null, false);
	Fade("ev1", 200, 1000, null, false);

	Move("bg1", 700, -270, -22, AxlDxl, false);
	Move("ev1", 700, -550, -990, AxlDxl, true);

	Move("bg1", 600, @0, 161, Axl3, false);
	Move("ev1", 600, @0, -608, Axl3, false);

	Wait(300);
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("bg2", 300, 1000, null, false);
	Fade("ev2", 300, 1000, null, false);
	Move("bg2", 600, @0, 50, Dxl3, false);
	Move("ev2", 600, @0, -180, Dxl3, true);
//	Move("ev3", 600, @0, -180, Dxl3, false);

	Wait(500);

	CreateColorEX("black", 5000, "000000");
	CreateColorEX("white", 5000, "FFFFFF");


//	Fade("ev3", 0, 1000, null, true);
//	WaitKey();

//	St("C",740, @0,@0,"stミンク_通常正面_angry2");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/3000270a05">
"&.&.&.I'll fufill my wish&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(16);

	CreatePlainSP("print", 5000);

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	Request("絵Suf", Smoothing);
	Zoom("絵Suf", 0, 1700, 1700, null, true);
	Rotate("絵Suf", 0, @0, @0, -10, null,true);
	Move("絵Suf", 0, @0, @0, null, true);

	CreateCamera("Ｃ", 0, 110, 300);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/bg1", 200, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	CreateTextureEX("Ｃ/ev2", 400, center, middle, "cg/st/st東江_通常_think.png");
	CreateTextureSP("Ｃ/ev1", 400, center, middle, "cg/st/st東江_通常_normal.png");
	CreateMovieEX("mv1", 2990, Center, middle, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("mv1", 0, 3500, 3500, null, true);
	Fade("mv1", 0, 400, null, true);

	SetSurface("Ｃ/*","絵Suf");

	SetShade("Ｃ/bg1", HEAVY);

	Move("Ｃ/bg1", 0, @0, @100, null, true);
	Move("Ｃ/ev*", 0, @0, @200, null, true);

	Request("Ｃ/*", Smoothing);

	Zoom("Ｃ/bg1", 0, 2000, 2000, null, true);
	Zoom("Ｃ/ev*", 0, 1000, 1000, null, true);

	SetBlur("Ｃ/ev*", true, 1, 500, 50, false);

	CreateSE("SE01","se戦闘_動作_走る01");
	CreateSE("SE02","se戦闘_動作_走る03a");
	CreateSE("SE03","se戦闘_剣撃_風切り高02");
	CreateSE("SE04","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

//動作開始
	MoveFFP1("@Ｃ/*",5000,1,5);
	MoveCamera("Ｃ", 1500, @10, 10, 700, null, false);
	Rotate("絵Suf", 1500, @0, @0, 2, null,false);
	FadeDelete("print", 200, null, false);

	Wait(900);
	Fade("Ｃ/ev1", 200, 0, Axl3, false);
	Fade("Ｃ/ev2", 200, 1000, Dxl2, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE04",0,700,0,1000,null,false);
	MoveCamera("Ｃ", 230, @10, 10, 6000, Axl3, false);
	Rotate("絵Suf", 250, @0, @0, 10, Axl3,false);
	Fade("black", 200, 1000, Axl2, true);

	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(100);

//※ＳＥ：ぶすっとナイフで腹を刺す音
	CreateSE("SE11","se戦闘_剣撃_ヒット04");
	MusicStart("SE11",0,1000,0,1000,null,false);

	Wait(2500);

//※ＳＥ：どーんと遠くで爆発音（タワーに仕掛けた爆薬）
	CreateSE("SE12","se物体_東江タワー_爆発01");
	MusicStart("SE12",0,200,0,1000,null,false);

	Wait(500);

	CreateSE("SE13","se物体_東江タワー_倒壊01");
	MusicStart("SE13",0,400,0,1000,null,false);

	Fade("white", 3000, 1000, null, true);

	SetVolumeEX("SE*", 3000, 0, null);
	Wait(3000);

//※次ファイル["dm3740.nss"]

}
