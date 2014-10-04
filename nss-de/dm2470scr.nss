//<continuation number="330">
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


scene dm2470scr.nss_MAIN
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
	$GameName = "dm2480.nss";

}


scene dm2470scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg203011_0_暴露ノイズ穴");
	FadeBG(0,true);

	St("C",740, @0,@0,"stノイズ_正面正気_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 2000, null, true);

	Wait(1000);

/*
//ガラス割れ　演出====================================

$garasu_prio_hibi = 10002;
$garasu_prio_hibi2 = 10001;
$garasu_prio = 10000;
$garasu_lensprio = 9999;
$garasu_prio2 = 9998;

$garasu_lightef01 = 9997;
$garasu_lightef02 = 9996;

$garasu_speed = 1000;
$garasu_speed2 = 2000;

	CreateColorEXadd("garasuef03", $garasu_prio_hibi, "FFFFFF");
	CreateColorEX("garasuef04", $garasu_prio_hibi2, "000000");

	CreateTextureEX("garasuef_hahen00", $garasu_prio_hibi, 30, 0, "cg/ef/effi暴露成功_mask00.png");
	CreateTextureEX("garasuef_hahen01", $garasu_prio_hibi, 0, 0, "cg/ef/effi暴露成功_mask01.png");
	CreateTextureEX("garasuef_hahen02", $garasu_prio_hibi, 0, 256, "cg/ef/effi暴露成功_mask02.png");
	CreateTextureEX("garasuef_hahen03", $garasu_prio_hibi, 401, 250, "cg/ef/effi暴露成功_mask03.png");
	CreateTextureEX("garasuef_hahen04", $garasu_prio_hibi, 734, 119, "cg/ef/effi暴露成功_mask04.png");
	CreateTextureEX("garasuef_hahen05", $garasu_prio_hibi, 518, 151, "cg/ef/effi暴露成功_mask05.png");
	CreateTextureEX("garasuef_hahen06", $garasu_prio_hibi, 533, 0, "cg/ef/effi暴露成功_mask06.png");
	CreateTextureEX("garasuef_hahen07", $garasu_prio_hibi, 242, 0, "cg/ef/effi暴露成功_mask07.png");
	CreateTextureEX("garasuef_hahen08", $garasu_prio_hibi, 192, 225, "cg/ef/effi暴露成功_mask08.png");
	CreateTextureEX("garasuef_hahen09", $garasu_prio_hibi, 442, 183, "cg/ef/effi暴露成功_mask09.png");
	CreateTextureEX("garasuef_hahen10", $garasu_prio_hibi, 507, 185, "cg/ef/effi暴露成功_mask10.png");
	CreateTextureEX("garasuef_hahen11", $garasu_prio_hibi, 470, 247, "cg/ef/effi暴露成功_mask11.png");

	CreateTextureEX("garasuef01", $garasu_prio_hibi, Center, Middle, "cg/ef/effi暴露成功.png");
	CreateTextureEXadd("garasuef02", $garasu_prio_hibi, Center, Middle, "cg/ef/effi暴露成功_mask.png");

	CreateTextureEXadd("garasuef05", $garasu_prio_hibi2, Center, Middle, "cg/ef/effi暴露成功_ef01.png");
	CreateTextureEXadd("garasuef06", $garasu_prio_hibi2, Center, Middle, "cg/ef/effi暴露成功_ef01.png");

	CreateMask("garasumasuku01", $garasu_prio, center, middle, "cg/ef/effi暴露成功_mask.png", true);
	SetAlias("garasumasuku01","garasumasuku01");

	CreateSE("garasumasuku_se01","se擬音_精神_ひび01");

	WaitKey();


	CreateEffect("garasumasuku02", $garasu_prio2, center, middle, 1024, 576, "Plain");
	SetAlias("garasumasuku02","garasumasuku02");
	Request("garasumasuku02",Passive);

	CreateEffect("garasumasuku01/plain", $garasu_prio, center, middle, 1024, 576, "Plain");
	SetAlias("garasumasuku01/plain","garasumasuku01/plain");
	Request("garasumasuku01/plain",Passive);
	Request("garasumasuku01/plain", Smoothing);

	SetShade("garasumasuku01/plain", LIGHT);
	SetShade("garasumasuku02", HEAVY);

	Lens_Set("garasulens",$garasu_lensprio,-300,-300,1624,1624);

	MusicStart("garasumasuku_se01",0,700,0,1000,null,false);
	Fade("garasumasuku02", 0, 1000, null, true);

	Zoom("garasu*", 20, 1100, 1100, null, true);
	Shake("garasu*", 80, 10, 6, 0, 0, 1000, Dxl1, false);
	Fade("garasuef01", 0, 1000, null, true);
	Fade("garasuef02", 0, 200, null, true);
	Zoom("garasu*", 100, 1000, 1000, Axl1, true);

	WaitKey();

	Rotate("garasuef05", 6100, @0, @0, 800, null,false);
	Rotate("garasuef06", 6100, @0, @0, -700, null,false);

	Fade("garasuef03", 100, 1000, null, true);
	Fade("garasuef04", 0, 1000, null, true);

	Zoom("garasu*", 20, 1100, 1100, null, true);
	Shake("garasu*", 100, 10, 10, 0, 0, 1000, Dxl1, false);


	Delete("garasuef01");
	Delete("garasuef02");

	Fade("garasuef05", 0, 1000, null, false);
	Fade("garasuef06", 0, 1000, null, false);
	Zoom("garasuef05", 6000, 20000, 20000, Axl3, false);
	Zoom("garasuef06", 6000, 20000, 20000, Axl3, false);

	Fade("garasuef_hahen00", 0, 1000, null, true);
	Fade("garasuef_hahen01", 0, 1000, null, true);
	Fade("garasuef_hahen02", 0, 1000, null, true);
	Fade("garasuef_hahen03", 0, 1000, null, true);
	Fade("garasuef_hahen04", 0, 1000, null, true);
	Fade("garasuef_hahen05", 0, 1000, null, true);
	Fade("garasuef_hahen06", 0, 1000, null, true);
	Fade("garasuef_hahen07", 0, 1000, null, true);
	Fade("garasuef_hahen08", 0, 1000, null, true);
	Fade("garasuef_hahen09", 0, 1000, null, true);
	Fade("garasuef_hahen10", 0, 1000, null, true);
	Fade("garasuef_hahen11", 0, 1000, null, true);

	Fade("garasuef01*", 50, 0, null, false);
	Zoom("garasuef_hahen*", $garasu_speed, 1500, 1500, Dxl1, false);

	Rotate("garasuef_hahen00", $garasu_speed, @0, @0, @50, null,false);
	Move("garasuef_hahen00", $garasu_speed, @-550, @-550, null, false);

	Rotate("garasuef_hahen01", $garasu_speed, @0, @0, @-300, null,false);
	Move("garasuef_hahen01", $garasu_speed, @-600, @0, null, false);

	Rotate("garasuef_hahen02", $garasu_speed, @0, @0, @300, null,false);
	Move("garasuef_hahen02", $garasu_speed, @-550, @550, null, false);

	Rotate("garasuef_hahen03", $garasu_speed, @0, @0, @-280, null,false);
	Move("garasuef_hahen03", $garasu_speed, @100, @550, null, false);

	Rotate("garasuef_hahen04", $garasu_speed, @0, @0, @150, null,false);
	Move("garasuef_hahen04", $garasu_speed, @600, @550, null, false);

	Rotate("garasuef_hahen05", $garasu_speed, @0, @0, @360, null,false);
	Move("garasuef_hahen05", $garasu_speed, @750, @-100, null, false);

	Rotate("garasuef_hahen06", $garasu_speed, @0, @0, @-160, null,false);
	Move("garasuef_hahen06", $garasu_speed, @650, @-550, null, false);

	Rotate("garasuef_hahen07", $garasu_speed, @0, @0, @260, null,false);
	Move("garasuef_hahen07", $garasu_speed, @-60, @-550, null, false);

	Zoom("garasuef_hahen08", $garasu_speed2, 3500, 3500, null, false);
	Rotate("garasuef_hahen08", $garasu_speed2, @760, @720, @90, null,false);
	Move("garasuef_hahen08", $garasu_speed2, @-450, @250, null, false);

	Zoom("garasuef_hahen09", $garasu_speed2, 1000, 1000, null, false);
	Rotate("garasuef_hahen09", $garasu_speed2, @-760, @720, @-80, null,false);
	Move("garasuef_hahen09", $garasu_speed2, @250, @150, null, false);

	Zoom("garasuef_hahen10", $garasu_speed2, 8500, 8500, null, false);
	Rotate("garasuef_hahen10", $garasu_speed2, @360, @100, @50, null,false);
	Move("garasuef_hahen10", $garasu_speed2, @-250, @-250, null, false);

	Zoom("garasuef_hahen11", $garasu_speed2, 4500, 4500, null, false);
	Rotate("garasuef_hahen11", $garasu_speed2, @240, @-720, @100, null,false);
	Move("garasuef_hahen11", $garasu_speed2, @250, @-150, null, false);

	Fade("garasuef_hahen08", $garasu_speed2, 0, Axl3, false);
	Fade("garasuef_hahen09", $garasu_speed2, 0, Axl3, false);
	Fade("garasuef_hahen10", $garasu_speed2, 0, Axl3, false);
	Fade("garasuef_hahen11", $garasu_speed2, 0, Axl3, false);

	Fade("garasuef03", 50, 0, null, true);

	Fade("garasuef03", 6000, 1000, Axl3, true);


/*
$garasu_prio = 10000;
$garasu_speed = 30000;

	CreateMask("garasumasuku01", $garasu_prio, 0, 0, "cg/ef/effi暴露成功_mask01.png", true);
	SetAlias("garasumasuku01","garasumasuku01");
	CreateEffect("garasumasuku01/plain", $garasu_prio, 0, 0, 350, 400, "Plain");
	SetAlias("garasumasuku01/plain","garasumasuku01/plain");
	Request("garasumasuku01/plain",Passive);
	SetVertex("garasumasuku01*", 200, 200);

	WaitKey();

	Move("garasumasuku01*", $garasu_speed, @200, @0, null, false);
	Rotate("garasumasuku01*", $garasu_speed, @0, @0, @600, null,false);

*/


//ガラス割れ　演出====================================
*/



//※選択肢がうまくいった場合：



//※目の前にノイズが立ってる。
//※蒼葉、ノイズと対峙する。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000010a03">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000020a01">
"Noiz&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000030a03">
"A world where I can't feel anything is lonely&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000040a03">
"I don't know how anyone else feels&. So I don't know how I  could connect with them&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_正面正気_sad2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000050a03">
"It's so lonely and it hurts&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000060a03">
"But no one would understand&. My parents treated me like a  parasite&."

{	St("C",740, @0,@0,"stノイズ_正面正気_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000070a03">
"They must've wanted me to hurry up and die&. So I said I'd  keep living on&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000080a03">
"Even if I was alone&, I'd survive&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000090a03">
"And for that&, I refused to rely on anyone&. If I threw that away&, I'd be able to master living on my own&. It's not a
 problem even if I'm alone&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stノイズ_正面正気_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000100a03">
"No one will be sad if I die&. It's the smartest&, easiest
 way to live&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000110a01">
"&.&.&.You're wrong&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000120a01">
"Don't you know that's not true?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_正面正気_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000130a03">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000140a01">
"I already care about you&. That's why I worry about you&,
 why I help you when you're hurt; I'd mourn you if you
 died&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000150a01">
"And don't you want to have a match in Rhyme with me? You
 still need me to do that&. That's why you've stayed with
 me all this time&. Isn't that right?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000160a01">
"Why are you so attached to Rhyme? You said you didn't even want to interact with people&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_正面正気_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000170a03">
"&.&.&.&.&."

{	St("C",740, @0,@0,"stノイズ_正面正気_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000180a03">
"&.&.&.In Rhyme&, the pain you feel is in your head and not
 from your body&. So even I could understand what pain
 could be in some way&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000190a03">
"I don't know what real pain feels like&, but when I receive damage in Rhyme&.&.&. I thought that was what pain was&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stノイズ_正面正気_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000200a03">
"And in that moment&, I could feel like I was alive&. I
 wasn't some monster that didn't understand peoples' pain&,
 but alive&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000210a03">
"Even though I could feel pain in Rhyme&, I was never afraid of taking damage&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000220a03">
"I was always strong&, even if I could feel pain or not&, so
 others became even less important to me&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000230a03">
"But I lost to you&. So I want to fight you once more and
 win&."

{
	St("C",740, @0,@0,"stノイズ_正面正気_normal");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000240a03">
"I want to throw you down on the ground on my field&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000250a01">
"&.&.&.You're contradicting yourself here&. You probably can
 live on your own yourself&, but&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000260a01">
"The truth is that you are attached to different people&. So that's why you turn to Rhyme&, where you can feel pain&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000270a01">
"Isn't Rhyme the only place where you can share things with others&, like pain? I fought you and beat you&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000280a01">
"So when I trespassed over your boundaries&, didn't you mean that you wanted to be connected again by another rematch?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_正面正気_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/7000290a03">
"&.&.&.That's-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000300a01">
"I'll accept your rematch&. Not in Rhyme&, but in the real
 world&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000310a01">
"You're not alone anymore&, and you don't have to be&. I
 won't let you be&. If you want to know what pain is like&,
 I'll show you&."

{	SetVolumeEX("@dm*", 3000, 0, null);}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000320a01">
"So I'm going to destroy you&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/7000330a01">
"Whatever's holding you in&.&.&. I'm going to destroy the
 world you're trapped in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(50);

	CreateEffectSP("絵演平面", 5000, Center, Middle, 1024, 576, "Plain");
	SetBlur("絵演平面", true, 3, 300, 80, false);
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	CreateTextureEXadd("絵演風圧", 4010, Center, Middle, "cg/ef/efクリアの歌声.jpg");
	SetBlur("絵演風圧", true, 3, 800, 80, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵演風圧", 0, 2200, 2200, null, true);

	Zoom("絵演平面", 3000, 1200, 1200, Dxl1, false);
	Zoom("絵演風圧", 3000, 15000, 15000, Dxl3, false);
	Fade("絵演風圧", 300, 300, Axl1, true);

	DrawTransition("絵演風圧", 3000, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", false);
	Fade("絵演風圧", 800, 0, null, false);
	Fade("絵演平面", 1300, 0, null, true);
	Delete("絵演平面");
	Delete("絵演平面");

	CreateSE("SE02","se擬音_精神_ひび01");
	MusicStart("SE02",0,700,0,2000,null,false);
	CreateColorEX("絵色白", 4000, "FFFFFF");
	CreateTextureSPadd("絵演暴露罅", 3990, Center, Middle, "cg/ef/effi暴露成功.png");
	Fade("絵演暴露罅", 0, 150, null, true);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(1000);

	CreateGlass(10000);
	SetVolumeEX("@dm*", 1000, 0, null);
	GoGlassCrash();
	Wait(1000);

/*
//あきゅん「演出：現実世界へ」
	CreateTextureEX("絵演効果二", 1990, Center, Middle, "cg/ef/effi暴露成功.png");
//	Rotate("絵演効果二", 0, @0, @0, @90, null,true);
//	Zoom("絵演効果二", 0, 1800, 1800, null, true);

//※うまく助けられた場合は世界にヒビが入り、バリーンと割れる。
	CreateSE("SE03","se擬音_精神_ひび01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Fade("絵演効果二", 0, 1000, null, true);

	Wait(1000);
*/

//※次ファイル["dm2480.nss"]

}
