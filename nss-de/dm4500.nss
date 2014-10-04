//<continuation number="230">
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


scene dm4500.nss_MAIN
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
	#bg304121_5_東江タワー東江の間セイ=true;
	#bg304031_5_東江タワー廊下01セイ=true;
	#bg304021_5_東江タワー前通りセイ=true;
	#bg301021_5_プラチナジェイル中通り4アクアセイ=true;
	#bg301011_5_プラチナジェイル大通り4アクアセイ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4510.nss";

$HALevel=1;

}


scene dm4500.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm020a",0,700,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureSP("絵背景下2", 70, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	CreateTextureSP("絵背景下", 80, Center, Middle, "cg/bg/bg304122_5_東江タワー東江の間.jpg");

	CreateTextureSP("絵ＥＶ200", 200, Center, Middle, "cg/ev/ev940歌うクリア.jpg");

	FadeDelete("上背景", 0, null, true);

//===========================================
//特殊選択肢を選ばなかった場合、以下へ
//===========================================

//	Fw("fwクリアα_通常マスクなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	FadeDelete("絵ＥＶ200", 500, null, true);
}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm45/0000010b18">
"Ugaaah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(50);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,800,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
The two α's fall to the floor&, both desperately grasping 
at their heads in pain&.

After a short time&.&.&. they stop moving&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,500,0,1300,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
Clear finishes his song&, and his knees start to bend&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_崩壊_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011c]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000020a04">
"&.&.&.!"

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000030a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1100,null,false);

	CreateTextureEX("絵背景101", 101, -208, -195, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
	Move("絵背景101", 500, -59, -280, Dxl3, false);
	Fade("絵背景101", 500, 1000, null, true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I frantically rush over and support him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000040a01">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000050a04">
"Yes&.&.&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000060a01">
"That song just now&.&.&."

{	Fw("fwクリア_正面崩壊_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000070a04">
"I overloaded their throughput with the the largest amount
 of output in my song&."

{	SoundPlay("@dm015",0,450,true);}
{	Fw("fwクリア_正面崩壊_normal2");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000080a04">
"I never sang the same song as them&. So my melody is a
 complete oppposite of what theirs is&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000081a01">
"Complete opposite&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000100a04">
"When Grandpa revised me&, he programmed it in case of an
 emergency&, I think&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000110a04">
"The song's soundwaves were made so the α could not
 process them&."

{	Fw("fwクリア_正面崩壊_serious2");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000111a04">
"And so the output of my song went past their limit of
 throughput and destroyed them&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000120a04">
"I'm not sure if it worked well or not&.&.&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000130a01">
"I see&.&.&. But that was really pushing it&, you idiot&."

{	Fw("fwクリア_正面崩壊_worry");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000140a04">
"I'm sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
Clear looks up at me with a slightly troubled grin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	Delete("絵背景101");
	Fade("絵背景下", 0, 0, null, true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
When I look around&, I see that Toue has vanished&.
He must've run out of the room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000150a01">
"That bastard&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ごごごごご、とタワーが揺れる

	CreateSE("SE01","se物体_東江タワー_地鳴り01L");
	MusicStart("SE01",0,300,0,1000,null,true);

//	BGPlainShake(50,3000,0,5,0,0,1000,null,true);

//	CreatePlainSP("絵板写", 5000);
//	Shake("絵板写", 500, 0, 15, 0, 0, 1000, null, false);
//	Wait(500);
//	Delete("絵板写");

//※セイの顔がモニターに次々現れる演出

	SetVolumeEX("@dm*", 1000, 0, null);
	Wait(32);

	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");#bg304121_5_東江タワー東江の間セイ=true;
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01セイ.jpg");#bg304031_5_東江タワー廊下01セイ=true;
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_東江タワー前通りセイ.jpg");#bg304021_5_東江タワー前通りセイ=true;
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_プラチナジェイル中通り4アクアセイ.jpg");#bg301021_5_プラチナジェイル中通り4アクアセイ=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_プラチナジェイル大通り4アクアセイ.jpg");#bg301011_5_プラチナジェイル大通り4アクアセイ=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreatePlainSP("絵板写", 2000);
	Delete("絵ＥＶ");
	SetBlur("絵板写", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("絵板写", 300, 2000, 2000, Axl1, false);
	FadeDelete("絵板写", 300, null, false);

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	CreateSE("SE02","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);

	SeiMonitorCreate01();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart01();

	Fade("絵色白", 100, 1000, null, true);
	Fade("back2", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Fade("back3", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Fade("back4", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Fade("back5", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 500, 1000, null, true);

	CreateSE("SE11","se物体_東江タワー_地割れ01");
	MusicStart("SE11",0,700,0,1000,null,true);

	CreateSE("SE10","se擬音_精神_崩壊01L");
	MusicStart("SE10",0,700,0,1000,null,true);

	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE12","se物体_東江タワー_地鳴り01L");
	MusicStart("SE12",1000,300,0,1000,null,true);

	Fade("絵色白", 100, 1000, null, true);

	Wait(1000);
//	Shake_Loop_shima3("@絵背景下*","プロ地震")

	dm1500ShakeLoop("絵揺れ","bg304121_5_東江タワー東江の間",400,1);




//	SetVolumeEX("SE10", 1000, 0, null);
	Delete("back*");
	Delete("sei*");
	FadeDelete("絵色白", 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000160a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Suddenly&, the tower starts to shake&.

What was that just now&.&.&.?

A number of monitors appear&, and someone's face is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Shake_LoopFree("@絵背景下",0,1,0,0,500);
	Fade("絵背景下", 0, 1000, null, true);
	FadeDelete("絵揺れ", 500, null, true);

	Delete("絵背景下2");

$HALevel=1;

	St("C",740, @0,@0,"buクリア_正面崩壊_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000170a04">
"&.&.&.Ah&."

{	St("C",740, @0,@0,"buクリア_正面崩壊_sad");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000180a04">
"&.&.&.Right now&, the original source of our power was just
 terminated&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000190a01">
"Original?"

{	St("C",740, @0,@0,"buクリア_正面崩壊_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000200a04">
"Yes&. The symbol of Toue's ambitions&, all of Platinum
 Jail&."

{	St("C",740, @0,@0,"buクリア_正面崩壊_normal2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000210a04">
"I'm not affected because I broke my key lock&, but all
 power to the α have been cut off&. They should not be able
 to move anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_正面崩壊_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/0000220a04">
"And now before long&, this entire tower will collapse&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000221a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	CreateTextureEX("絵上", 3001, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	CreateTextureEX("絵下", 3000, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	Fade("絵上", 1000, 1000, null, true);
	Fade("絵下", 0, 1000, null, true);
	SetVolumeEX("SE*", 1000, 700, null);
	Shake("絵上", 3000, 0, 10, 0, 2, 1000, null, false);

	St("C",740, @0,@0,"fuクリア_正面崩壊_serious");
	FadeSt("C",0,true);

	Wait(1500);

	FadeDelete("絵上", 1000, null, false);
	FadeDelete("絵下", 1000, null, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I don't understand what Clear is saying&.

The tower crumbling doesn't sound like a completely bad 
thing&, except&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/0000230a01">
"Anyway&, we have to get out of here before it falls&. Hold
 onto me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	DeleteAllSt(0,true);
	CreateSE("SE11","se人体_動作_衣擦れ01");
	MusicStart("SE11",0,700,0,1000,null,false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
I pull Clear's arm over my shoulder&, and start running 
while holding his entire body up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Shake_LoopDelete();

	Wait(500);

//※次ファイル["dm4510.nss"]

}
