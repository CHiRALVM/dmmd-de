//<continuation number="120">
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


scene dm5391.nss_MAIN
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
	$GameName = "dm5400.nss";

	//▼頭痛レベル設定
	$HALevel=4;
}


scene dm5391.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	FadeDelete("上背景", 0, null, true);

//===========================================
//「力を使う」の場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Now&.&.&. I have no other choice but to use it&.

&.&.&.My power&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1100,null,false);

	Move("絵背景", 300, @0, @-50, Dxl1, false);
	FadeDelete("絵背景", 300, null, true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9100010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
//※どくん、と頭痛
	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I raise my head up and manage to focus&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/9100020b04">
"&.&.&.It's coming&. Trip&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//ズームでトリップぐわっと表示
	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵立絵", 200, Center, 0, "cg/bu/buトリップ_通常バッヂ_normal.png");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304041_5_東江タワー研究エリア研究室.jpg");

	Request("絵立絵", Smoothing);
	SetVertex("絵立絵", 525, 200);
	SetShade("絵背景", SEMIHEAVY);

	Zoom("絵立絵", 300, 2000, 2000, Axl3, false);
	Zoom("絵背景", 330, 1400, 1400, Axl3, false);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(150);

	FadeDelete("絵板写", 300, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The moment I'm about to speak&, Trip is already in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 7000, "FFFFFF");
	Fade("絵フラッシュ白", 150, 1000, Dxl1, true);

	Delete("絵背景");
	Delete("絵立絵");
	Wait(100);
	CreatePlainSP("絵板写", 100);
	Shake("絵板写", 500, 50, 0, 0, 0, 500, Dxl1, false);
	FadeDelete("絵フラッシュ白", 100, Null,true);

//※頬を殴られる
	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9100030a01">
"-!"

{	St("C",700, @0,@0,"stトリップ_通常バッヂ_normal2");
	FadeSt("C",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/9100040b09">
"Even if you try to use your voice&, it's all useless&, Aoba&. Because we've been watching&. Watching how your throat
 works&, how it produces that special voice&."

{	DeleteSt("C", 200,true);
	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9100050a01">
"!?"

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/9100060b04">
"We didn't know at first&, but the truth is&, we've been
 receiving some help from Sei-san&. Why do you think that
 is?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵霞", 780);

	CreateMaskSetSP("絵窓", 2000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");
	CreateTextureSP("絵窓/絵立絵", 1000, Center, -210, "cg/fu/x/fuウイルス_通常バッヂ_normal_x01.png");
	CreateTextureSP("絵窓/絵背景", 800, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	CreateColorEXsub("絵窓/絵色黒", 900, "WHITE");

	SetShade("絵窓/絵背景", MEDIUM);
	SetShade("絵霞", MEDIUM);

	Fade("絵色黒", 0, 300, null, true);

	Move("絵窓/絵背景", 0, @-60, @0, Dxl1, true);
	Move("絵窓/絵立絵", 0, @-100, @0, Dxl1, true);

	Move("絵窓/絵背景", 1000, @60, @0, Dxl1, false);
	Move("絵窓/絵立絵", 1000, @100, @0, Dxl1, false);
	DrawDelete("絵板写", 500, 100, null, "slide_05_01_0", true);


	Wait(1000);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/9100070b04">
"We've been making our way around here&, just so Sei-san
 can't manipulate us with his eyes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Virus pushes up his glasses&.

{	DeleteAllSt(200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/9100080b09">
"Aaaoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕弐", 16000, "BLACK");
	DrawTransition("絵黒幕弐", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	Delete("絵霞");
	Delete("絵黒幕");
	Delete("絵窓/絵*");
	Delete("絵窓*");
	Delete("絵色黒");
	DeleteSt("C", 0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");
	St("C",700, @0,@0,"buトリップ_通常バッヂ_normal2");
	FadeSt("C",0,true);

	DrawDelete("絵黒幕弐", 300, 100, Dxl1, "slide_01_01_0", true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9100090a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 7000, "FFFFFF");
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);

	Delete("絵背景");
	DeleteSt("C", 0,true);
	Wait(30);

	FadeDelete("絵フラッシュ白", 100, Dxl3, true);

	BGPlainShake(100,300,0,30,0,0,1000,Axl1,false);

//※みぞおちを殴られる
	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9100100a01">
"-Gah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",700, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/9100110b09">
"Don't look away&, now!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

	DeleteSt("C", 0,true);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg304041_5_東江タワー研究エリア研究室_l.jpg");

	Move("絵背景", 200, @0, @-500, Dxl2, false);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_02_01_0", true);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景", 300, 0, 50, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Trip's fist sinks into the pit of my stomach and I lose my breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 7000, "FFFFFF");
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);

	Wait(30);

	FadeDelete("絵フラッシュ白", 100, Dxl3, true);

	Shake("絵背景", 500, 20, 0, 0, 0, 500, null, false);

//※背中を蹴られる
	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9100120a01">
"Uck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
My knees buckle as someone kicks me in the back&, and I 
shamefully tumble down to the ground&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5400.nss"]

}
