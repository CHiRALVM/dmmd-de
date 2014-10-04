//<continuation number="250">
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


scene dm1520.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){

		if($dm1510_SE11==true){Request("SE11",UnLock);$dm1500_SE11=false;}
		SkipOut();

	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev152紅雀大立ち回り=true;
	#ev137紅雀無双a=true;
	#bg304022_5_東江タワー前通り崩壊中=true;
	#bg304031_5_東江タワー廊下01崩壊中=true;

	//▼演出処理を初期化
	$CautionAlarm=false;
	Request("@EFWIN/合成音声",UnLock);
	Request("@EFWIN/SE01",UnLock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1530.nss";

}


scene dm1520.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304031_5_東江タワー廊下01崩壊中");
	FadeBG(0,true);

//嶋：超速対応
	if($dm1510_SE11==true){
		Request("SE11",UnLock);
		$dm1510_SE11=false;
	}else{
		CreateSE("SE11","se物体_東江タワー_地鳴り01L");
		MusicStart("SE11",0,700,0,1000,null,true);
	}

//あきゅん「※：超速対応、アラームと警報音」
	if($CautionAlarm==true){
		Request("@EFWIN/SE01", Play);
		Request("@EFWIN/合成音声", Play);
		SetVolumeEX("@EFWIN/SE01", 10, 300, null);
		SetVolumeEX("@EFWIN/合成音声", 10, 700, null);

	}else{
	CreateSE("@EFWIN/SE01","se物体_東江タワー_アラーム01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",0,300,0,1000,null,true);
	CreateVOICEEX("@EFWIN/合成音声","dm15/0000010e14","合成音声");
	Request("@EFWIN/合成音声", Lock);
	MusicStart("@EFWIN/合成音声",0,700,0,1000,null,true);
	$CautionAlarm=true;
	}

	Request("@EFWIN/合成音声",UnLock);
	Request("@EFWIN/SE01",UnLock);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm008",0,450,true);

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE02","se人体_足音_走る04複数");
	CreateSE("SE01","se人体_足音_一歩02");

	CreateColorEXmul("絵dm3520red", 500, RED);
	Fade("絵dm3520red", 0, 600, null, true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("絵シェイク","bg304031_5_東江タワー廊下01崩壊中",400,1);

//※どたどたどた、と走ってくる警備員数人
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(1000);

	SetVolumeEX("SE02", 500, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, null, "slide_01_01_1", true);



	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm15/2000010e16">
"Hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	$CautionAlarm=false;
	SetVolumeEX("@SE11", 300, 0, null);
	SetVolumeEX("@EFWIN/合成音声", 10000, 0, null);
	SetVolumeEX("@EFWIN/SE01", 10000, 0, null);

	CreateSE("SE01","se人体_足音_走る04複数");//あきゅん「ＳＥ：se人体_足音_走る04複数」
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Suddenly&, a mob of guards come swarming after us&.

They must've gathered around the entrance&. And there's a 
lot of them&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_バーサク正気_angry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000020a02">
"They always come at the worst times&."

{	Fw("fwm紅雀チームA_通常_normal");}
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/2000030e47">
"You guys are in our damn way!"

{	Fw("fwm紅雀チームB_通常_normal");}
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/2000040e48">
"Get outta heeeereeee!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE10","se環境_戦闘_戦闘01L");
	MusicStart("SE10",0,600,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
That just stirred up the guards even more&, and they&, with 
their ravenous looks&, swoop down on us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Both Koujaku and I are surrounded&.

{
	CreateSE("SEAK01","se物体_東江タワー_地割れ02");
	MusicStart("SEAK01",0,1000,0,1000,null,false);
}
The floor keeps shaking uncontrollably&, and I hear the 
sound of something exploding&. <k>We don't have much time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_バーサク正気太刀あり_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000050a02">
"Aoba&, step back a bit&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE10", 2000, 0, null);

	CreateTextureEX("絵ＥＶ10", 2000, -80, -76, "cg/ev/l/ev137紅雀無双a_l.jpg");
	CreateTextureEX("絵ＥＶ00", 1900, Center, Middle, "cg/ev/ev137紅雀無双a.jpg");
	CreateMovieEXadd("絵動画", 1950, Center, 262, true, true, "dx/mvk100.ngs");
	Zoom("絵動画",0,3000,3000,null,true);
	Request("絵動画",Smoothing);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");

	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ10", 2500, -380, @0, Dxl1, false);
	Fade("絵ＥＶ10", 500, 1000, null, true);
	Fade("絵ＥＶ00", 0, 1000, null, true);
	Fade("絵動画", 0, 600, null, true);
	Wait(300);
	Fade("絵ＥＶ10", 500, 0, null, true);
	Delete("絵ＥＶ10");

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Koujaku takes a step forward and reaches for his blade&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/2000060a01">
"Hey&, Koujaku&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//{	Fw("fw紅雀_バーサク正気_mad");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000070a02">
"I'll end it in one shot&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
As he says that&, Koujaku puts on a sly smile and waves his blade in a long stroke&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");

	CreateTextureEX("絵ＥＶ０", 2000, -373, -55, "cg/ev/m/ev152紅雀大立ち回り_m.jpg");
	Request("絵ＥＶ０",Smoothing);
	Zoom("絵ＥＶ０", 0, 1500, 1500, null, true);

	CreateTextureEX("絵ＥＶ１", 1000, Center, Middle, "cg/ev/ev152紅雀大立ち回り.jpg");

	CreateTextureEX("絵ＥＶ３", 1000, Center, Middle, "cg/ev/ev152紅雀大立ち回り.jpg");


	CreateTextureEXadd("絵ＥＶ２", 1010, Center, Middle, "cg/ef/efx01剣閃01.jpg");
//	Zoom("絵ＥＶ２", 0, 1000, 1000, null, true);
	Request("絵ＥＶ２", Smoothing);

	Move("絵ＥＶ２", 0, -326, -436, null, true);
	Rotate("絵ＥＶ２", 0, @0, @0, -20, null,true);
	SetBlur("絵ＥＶ２", true, 2, 500, 50, false);
	SetBlur("絵ＥＶ３", true, 3, 500, 50, false);

	SetVolumeEX("SE10", 300, 0, null);

	Move("絵ＥＶ０", 900, -735, 230, Dxl1, false);
	Fade("絵ＥＶ０", 300, 1000, Dxl1, true);

	Wait(500);
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");

	Delete("絵ＥＶ10");
	Delete("絵ＥＶ00");
	Delete("絵ＥＶ０");
//	Delete("絵動画");
	Fade("絵動画", 0, 1000, null, true);
	Move("絵動画", 0, @0, 300, Dxl1, true);
	Rotate("絵動画", 0, @0, 180, -15, null,true);

	Fade("絵ＥＶ１", 0, 1000, null, true);
	Fade("絵ＥＶ３", 0, 500, null, true);
	Fade("絵ＥＶ２", 0, 500, null, true);

	Zoom("絵ＥＶ３", 400, 1500, 1500, Dxl1, false);
	Zoom("絵ＥＶ２", 500, 4000, 4000, Dxl1, false);
	Fade("絵ＥＶ３", 300, 0, null, false);
	Fade("絵ＥＶ２", 400, 0, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000080a02">
"Orryyyyaaahhhhhhhhhh!!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);

	Delete("絵ＥＶ*");
	Delete("絵動画");

	CreateSE("SE01","se人体_衝撃_転倒02複数");

	CreateTextureEX("絵背景50", 500, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01崩壊中.jpg");
	SetBlur("絵背景50", true, 3, 300, 50, false);
	Fade("絵背景50", 0, 500, null, true);

	Zoom("絵背景50", 350, 2000, 2000, Dxl1, false);

	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵フラッシュ白", 100, null,true);
	FadeDelete("絵背景50",100,null,true);


{	Fw("fwm警備B_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm15/2000090e17">
"Whoaah!"

{	Fw("fwm警備C_通常_normal");}
//【警備Ｃ】
<voice name="警備Ｃ" class="警備Ｃ" src="voice/dm15/2000100e18">
"Wha-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
The wide blade mows down all the guards&, a huge gust 
throwing them down&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_バーサク正気太刀あり_shout");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000110a02">
"Don't just fuckin' stand there!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm紅雀チームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/2000120e47">
"Y-Yes!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");

	CreateTextureSP("絵ＥＶ１", 1000, Center, Middle, "cg/ev/ev152紅雀大立ち回り.jpg");

	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000130a02">
"Uryah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット複数01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);

	Delete("絵ＥＶ１");
	CreateTextureEX("絵背景50", 500, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01崩壊中.jpg");
	SetBlur("絵背景50", true, 3, 300, 50, false);
	Fade("絵背景50", 0, 500, null, true);

	Zoom("絵背景50", 350, 2000, 2000, Dxl1, false);
	FadeDelete("絵色白",100,null,true);

	FadeDelete("絵背景50", 100, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Koujaku goes to the guards and calls his men&, swinging his blade all the way there&.

Like dolls&, the guards fumble around and fall to the 
ground&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fwm警備A_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm15/2000140e16">
"Guh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵ＥＶ０", 2000, -740, -199, "cg/ev/l/ev152紅雀大立ち回り_l.jpg");

	Move("絵ＥＶ０", 300, -1019, -49, Dxl1, false);
	Fade("絵ＥＶ０", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000150a02">
"Everyone&, in one clean sweep! You're not gonna die so calm your asses down!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shock");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/2000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I'm taken aback&, and just stare at Koujaku as he downs 
guards with a smile&.

This is just&.&.&.amazing&.

I actually think that right now&, this is just like Koujaku to do&.

He pulls through&, bold and clear&, when he needs to&. Just 
like a long time ago&.

He'd fly in whenever I was being bullied&, just like the 
riot he is right now&.

&.&.&.He never changed&, ever&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	PrintGO("上背景", 5000);
	OnBG(10,"bg304031_5_東江タワー廊下01崩壊中");
	FadeBG(0,true);

	CreateColorEXmul("絵dm3520red", 500, RED);
	Fade("絵dm3520red", 0, 600, null, true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("絵シェイク","bg304031_5_東江タワー廊下01崩壊中",400,1);

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");
	MusicStart("SE11",500,700,0,1000,null,true);


//あきゅん「※：ならしっぱだと五月蝿いので適にボリュームを落として下さい」
	CreateSE("@EFWIN/SE01","se物体_東江タワー_アラーム01L");
	MusicStart("@EFWIN/SE01",5000,300,0,1000,null,true);

//あきゅん「※：ならしっぱだと五月蝿いので適にボリュームを落として下さい」
	CreateVOICEEX("@EFWIN/合成音声","dm15/0000010e14","合成音声");
	MusicStart("@EFWIN/合成音声",5000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	Fw("fw紅雀_バーサク正気_pride");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000170a02">
"&.&.&.Okay!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(150,true);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st紅雀_バーサク正気太刀あり_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
Koujaku stops; there's not a single guard left standing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_バーサク正気太刀あり_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000180a02">
"Guys&, let's go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm紅雀チームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/2000190e47">
"Yes!"

{	St("C",740, @0,@0,"st紅雀_バーサク正気太刀あり_shout2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000200a02">
"Aoba!"

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/2000210a01">
"Yeah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	$dm1500BG_SHAKEP=6;
	CreateSE("SE01","se物体_東江タワー_爆発01");//あきゅん「ＳＥ：se物体_東江タワー_爆発01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
The sound of an explosion resounds from inside the shaking tower&.

We run in a straight line to the outside of the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE15","se人体_足音_走る03複数");//あきゅん「ＳＥ：se人体_足音_走る03複数」
	MusicStart("SE15",0,700,0,750,null,true);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Wait(1000);
	SetVolumeEX("@EFWIN/SE01", 1000, 0, null);
	SetVolumeEX("@EFWIN/合成音声", 1000, 0, null);
	SetVolumeEX("SE15", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);

	DeleteAllSt(0,true);
	Delete("@絵dm3520*");
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");
	Wait(1000);

	OnBG(10,"bg304023_5_東江タワー通用口");
	FadeBG(0,true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("絵シェイク","bg304023_5_東江タワー通用口",400,1);

	FadeDelete("絵色黒", 1000, null, true);


{	Fw("fwm紅雀チームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0067]
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/2000220e48">
"We- We made it out!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm紅雀チームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/2000230e47">
"We're outside!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
We get a little farther away from the tower&, and then stop and turn around to look&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE15","se人体_足音_走る03複数");//あきゅん「ＳＥ：se人体_足音_走る03複数」
//	MusicStart("SE15",0,700,0,750,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@絵dm3520*");
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");

	OnBG(10,"bg304022_5_東江タワー前通り崩壊中");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg304022_5_東江タワー前通り崩壊中.jpg");
	Fade("絵背景", 0, 1000, null, true);

	SoundPlay("@dm015",0,450,true);

	CreateTextureEX("絵背景2", 100, -400, Middle, "cg/bg/l/bg304022_5_東江タワー前通り崩壊中_l.jpg");
	Fade("絵背景2", 0, 1000, null, true);



	CreateSE("SE01","se物体_東江タワー_地割れ01");
	CreateSE("SE02","se物体_東江タワー_地割れ02");

	Move("絵背景2", 5000, -1024, @0, null, false);
	Shake("絵背景2", 5000, 0, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,600,0,1000,null,false);

	Shake_Loop("@絵背景","shake01");
	MoveFTP1("@絵背景",3500,10,2);


	CreateMovieSPsub("煙１", 5500, 0, -200, true, true, "dx/mvk100.ngs");
	Zoom("煙１", 1, 8000, 8000, null, true);

	CreateMovieSPsub("煙２", 500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("煙２", 1, 5000, 5000, null, true);

Request("煙１",SubRender);
Request("煙２",SubRender);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

//	SetVolumeEX("SE15", 1000, 0, null);

	Wait(1000);
	MusicStart("SE02",0,600,0,1000,null,false);
	Wait(1000);

	Fade("煙１",500,500,null,false);
//	FadeDelete("煙１",500,null,false);
	FadeDelete("絵背景2",500,null,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/2000240a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
The top of the tower swerves and crumbles down&, and black 
smoke starts to rise from it&.

Even though we're watching from the outside&, I know the 
whole thing is going to fall down&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//{	St("C",740, @0,@0,"st紅雀_バーサク正気太刀あり_shout2");
//	FadeSt("C",200,true);}

	Fw("fw紅雀_バーサク正気_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/2000250a02">
"It's dangerous here&. Let's get away&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
Koujaku pulls me along and we start to run away&, but I 
watch the tower over my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
If Oval Tower falls&, Platinum Jail can't keep going&. Toue'splan will be foiled&.

I don't know why the tower started to crumble all of a 
sudden&.

But I can't help the feeling that something must've 
happened back there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：回想気味に配信ゲームなんかを」
//嶋：徒歩十分を召喚した！！
//コイル

	EfRecoIn1(10000,200);

//ここにコイル
//==============================
	CreateTextureSP("コイル", 6000, 0, 0, "cg/sys/coil/ss/dm0480.png");
//==============================

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Those appareances of the princess&, those puzzling messages&.
The foreboding game transmissions&.

It might've been a trap from the start&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：回想ここまで」
	EfRecoOut1(100);

//この間で削除
//==============================
	Delete("コイル");
//==============================

	EfRecoIn2(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
But&.&.&. something in that tower was leading us all the way 
here&.

&.&.&.It's a crazy idea&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ぼかーん、タワー崩壊

	CreateSE("SE01","se物体_東江タワー_倒壊01");

	SetVolumeEX("@dm*", 1000, 0, null);

	Shake("絵背景", 10000, 5, 15, 0, 0, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 5000, 1000, null, true);

	Wait(1500);

	Delete("煙*");


	Shake_LoopDelete();

	SetVolumeEX("SE*", 2000, 0, null);

	Wait(1500);

	ClearFadeAll(1000, true);

//※次ファイル["dm1530.nss"]

}
