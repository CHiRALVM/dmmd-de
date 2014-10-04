//<continuation number="160">
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


scene dm5490_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";
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
	#ev940歌うクリアa=true;

	//▼演出処理を初期化
	TiesMovieDelete();
	Request("@EFWIN/SEL02a", UnLock);
	Request("@EFWIN/SEL02b", UnLock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5500scr.nss";

}


scene dm5490_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	SoundPlay("@dm010",0,450,true);

	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	if($dm5480_vs雑音==true){
	MusicStart("@EFWIN/SEL02a",0,300,0,800,null,true);
	MusicStart("@EFWIN/SEL02b",0,300,0,400,null,true);
	}else{
	CreateSE("@EFWIN/SEL02a","se環境_戦闘_戦闘01L");
	MusicStart("@EFWIN/SEL02a",6000,300,0,800,null,true);

	CreateSE("@EFWIN/SEL02b","se環境_戦闘_紅雀とノイズのもみ合い01L");
	MusicStart("@EFWIN/SEL02b",6000,300,0,400,null,true);
	$dm5480_vs雑音=true;
	}
	Request("@EFWIN/SEL02a", UnLock);
	Request("@EFWIN/SEL02b", UnLock);

	FadeDelete("上背景", 0, null, true);

	SetVolumeEX("@dm*", 3000, 300, null);

	CreateTextureEX("絵ＥＶＬ", 1100, -200, -150, "cg/ev/l/ev940歌うクリアa_l.jpg");
	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev940歌うクリアa.jpg");
	Zoom("絵ＥＶ", 0, 1500, 1500, null, true);
	SetBlur("絵ＥＶ", true, 2, 500, 100, false);

	CreateSE("SE05","se人体_動作_衣擦れ01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Move("絵ＥＶＬ", 1200, -100, 0, Dxl1, false);
	Fade("絵ＥＶＬ", 500, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Clear&, who was leaning over me&, stood up and then spread 
out his arms&.

While I wondered what he was doing&.&.&. 
A clear singing voice rang out through the area&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_力クリア01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵ＥＶＬ", 1000, 1200, 1200, Axl1, false);
	Wait(300);
	Zoom("絵ＥＶ", 1000, 1000, 1000, Dxl1, false);
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Delete("絵ＥＶＬ");
	CreateTextureEXadd("絵ＥＶ２", 1100, center, middle, "cg/ef/efクリアの歌声.jpg");
	Fade("絵ＥＶ２", 0, 500, null, true);
	Zoom("絵ＥＶ２", 0, 1000, 1000, null, true);
	Zoom("絵ＥＶ２", 500, 1100, 1100, Dxl1, false);
	Fade("絵ＥＶ２", 500, 0, null, true);

	Zoom("絵ＥＶ２", 0, 1000, 1000, null, true);
	Fade("絵ＥＶ２", 0, 500, null, true);
	Zoom("絵ＥＶ２", 500, 1100, 1100, Dxl1, false);
	Fade("絵ＥＶ２", 500, 0, null, true);

	SetVolumeEX("@EFWIN/SEL*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
Clear is&.&.&. singing?

Upon hearing his singing&, I notice that I hear nothing 
else&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ", 500, null, true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000010a01">
"The sounds&.&.&."

{	St("C",740, @0,@0,"st紅雀_通常_worry");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000020a02">
"Hey&.&.&.are you muting the other sounds with that song?
 Can you even do that&.&.&.?"

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_戦闘素手_normal2");
	FadeSt("C",180,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000030a02">
"-Hey! They're coming this way!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 500, 10, 5, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 500, null, false);


//	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Clear continues to sing&, and Koujaku sends the pursuing 
guards and Allmates flying&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000040a02">
"Aoba&, will it work this time?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000050a01">
"I'll try&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I close my eyes and try to focus my concentration again&.
I feel like it'll work this time&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000060a01">
"&.&.&.!"

{	Fw("fw紅雀_通常_shout");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000070a02">
"Uryah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Koujaku drives off more of the guards&.

But&.&.&.

&.&.&.It's no good&.
I still can't concentrate&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000080a02">
"No go?"

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000090a01">
"Just a little more&.&.&."

{	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000100a02">
"Is there no way to help you concentrate?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000110a01">
"My concentration ability&.&.&. That's right&, if I could
 look into my eyes I could&."

{	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000120a02">
"Your eyes&.&.&. A mirror?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Koujaku mutters&, and then grins&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「素材要望：紅雀の刀」
//あきゅん「演出：刀に映り込む蒼葉」


	CreateSE("SE01","se戦闘_打撃_ヒット低03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 500, 10, 5, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 500, null, false);


	CreateSE("SE01","se戦闘_剣撃_地面に刺す01");
	MusicStart("SE01",0,700,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
He kicks away another guard and leans over me; then he 
takes out his sword only to shove it into the ground&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/9000130a02">
"How about this?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(100);

	CreatePlainSP("絵板写", 5000);


//あきゅん「↓：映り込む蒼葉で表情差分」
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetShade("絵背景", HEAVY);

	CreateMask("絵１マスク1", 2500, 0,0,"cg/ef/ef紅雀之刀_x02.png",false);
	Request("絵１マスク1", Smoothing);

	CreateTextureEX("絵１マスク1/キャラ", 110, 50, -27, "cg/fu/fu蒼葉_通常_shock.png");
	CreateTextureEX("かたな", 100,0,0, "cg/ef/ef紅雀之刀_x01.png");
	CreateTextureEX("かたな2", 120,0,0, "cg/ef/ef紅雀之刀_x01.png");

	Fade("絵背景", 0, 1000, null, true);
	Fade("絵１マスク1/キャラ", 0, 1000, null, true);
	Fade("かたな", 0, 1000, null, true);
	Fade("かたな2", 0, 500, null, true);

	Move("絵背景", 700, @0, @-50, Dxl1, false);
	Move("かたな*", 700, @0, @-130, Dxl1, false);
	Move("絵１マスク1", 700, @0, @-130, Dxl1, false);
	Move("絵１マスク1/キャラ", 700, @0, @-50, Dxl1, false);

	FadeDelete("絵板写", 500, null, true);

	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
My face reflects on the sword's surface&.
So I can use this as a mirror&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵１マスク1/キャラ2", 100, 50, -77, "cg/fu/fu蒼葉_通常_normal.png");
	FadeDelete("絵１マスク1/キャラ", 400, Axl2, false);
	Fade("絵１マスク1/キャラ2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000140a01">
"Thank you&. I'll try it out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureEX("絵１マスク1/キャラ3", 100, 50, -77, "cg/fu/fu蒼葉_通常力行使_serious.png");
	FadeDelete("絵１マスク1/キャラ2", 400, Axl2, false);
	Fade("絵１マスク1/キャラ3", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I look into my eyes on the blade and the words come out of my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「↓：段々と写り込んでいた刀剣以外から意識が遠のき、最終的に自分の顔を向きあう」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000150a01">
"I'm going to go inside you&. Into you&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000160a01">
"I'm going to go inside of you&. So accept me&. I'm going to
 go inside you&.&.&. inside myself&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/9000161a01">
"So accept me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動01");
	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵板写2", 5000);
	Request("絵板写", Smoothing);
	SetBlur("絵板写", true, 2, 500, 1000, false);

	Zoom("絵板写", 30000, 1500, 1500, null, false);

	Zoom("絵板写2", 500, 1100, 1100, Dxl1, false);
	FadeDelete("絵板写2", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Little by little&.&.&. my vision fades out&.

I can't hear Clear's song anymore&, only the sound of my 
heartbeat&.

The faint sound of waves pile up&.

Somewhere&.&.&.

I've heard the sound of waves before&, a long time ago&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//※蒼葉、自分の精神世界へ入る

	SetVolumeEX("SE*", 300, 0, null);
	ScrapIn("転送暴露a",5010);
	TiesMovieNEXT();
	Wait(3000);
	ScrapInEnd();
	Wait(3000);
	Delete("絵１マス*");

//※次ファイル["dm5500scr.nss"]

}
