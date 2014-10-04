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


scene dm5690.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev569倒壊したタワーを見つめる=true;
	#ev569蒼葉、犬蓮を抱き締める=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5700.nss";

}


scene dm5690.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 5000, "FFFFFF");

	CreateTextureSP("絵背景100", 100, 0, 0, "cg/bg/bg304012_1_東江タワー全景崩壊後空.jpg");

	Delete("上背景");
	FadeDelete("絵色白", 3000, null, true);

//※蒼葉、現実の世界へ
//※記憶の中の空から今の空（プラチナ・ジェイル崩壊後）を表示

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The sky&.

A blue&, far away sky&.

A blue&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 500, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	DrawTransition("絵黒幕", 2000, 500, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(1000);

	CreateSE("SE01","se環境_喧騒_旧人民区青柳通り01L");
	MusicStart("SE01",3000,500,0,1000,null,true);

	CreateSE("SE02","se乗物_パトカー_サイレン01L");
	MusicStart("SE02",3000,200,0,1000,null,true);

	CreateSE("SE03","se乗物_救急車_サイレン01L");
	MusicStart("SE03",3000,100,0,1000,null,true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000010a01">
"&.&.&.&.&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm56/9000020a02">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawDelete("絵黒幕", 2000, 100, Dxl2, "slide_05_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
When I opened my eyes&, a face took the place of the sky&.

This is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm56/9000030a04">
"Are you all right? Master?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm56/9000040a02">
"Are you hurt? Get up slowly&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE04","se人体_動作_抱く01");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ110", 110, -963, -994, "cg/ev/x/ev569倒壊したタワーを見つめる_x.jpg");
	Move("絵ＥＶ110", 1000, -963, -909, Dxl1, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Koujaku supports my back and helps me up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵奥", 0, -210, -1087, "cg/ev/m/ev569倒壊したタワーを見つめる_効果瓦礫なし_m.jpg");

	CreateTextureSP("Ｃ/絵前", 500, -210, -828, "cg/ev/m/ev569倒壊したタワーを見つめる_背景瓦礫_m.png");
	Zoom("Ｃ/絵前", 0, 500, 500, null, true);

	FadeDelete("絵板写", 500, null, true);

	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Koujaku&, Clear&, Noiz&, Mink&.&.&.
Everyone's here&.

What in the world&.&.&.
just happened?

I saw people running around in chaos and some speaking with
serious looks on their faces; I then looked to the sky&.

&.&.&.No&, I wasn't looking up at the sky&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	SoundPlay("@dm015",0,450,true);

	MoveCamera("Ｃ", 4000, @0, -1087, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
But the symbol of Platinum Jail&, Oval Tower&.&.&. 
was actually falling apart&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000050a01">
"&.&.&.The tower&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The amazing sight leaves me speechless&. As I continue  
staring on&, Clear puts something on my lap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm56/9000060a04">
"Master&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000070a01">
"!"

{
	Fw("fw紅雀_通常_cool2");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm56/9000080a02">
"It was on the floor next to you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
When I saw what was on my lap&, my heart stopped&.

It was a bundle of blue fur&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000090a01">
"&.&.&.Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	Delete("Ｃ");

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureSP("絵背景210", 210, 0, -91, "cg/ev/m/ev004犬蓮起動_m.jpg");
	Move("絵背景210", 1000, 0, -152, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I hold Ren and he immediately starts up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreateTextureEX("絵背景211", 211, 0, -152, "cg/ev/m/ev004犬蓮起動a_m.jpg");
	Fade("絵背景211", 500, 1000, null, true);

	Delete("絵背景210");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
His eyes blink open&.

&.&.&.It's all right&. He started up&.

Relieved&, I pet his fur&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000100a01">
"Ren&.&.&."

{
	Move("絵背景211", 500, 0, -125, Dxl1, true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/9000110a06">
"Woof!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000120a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000130a01">
"&.&.&.Ren?"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/9000140a06">
"Woof!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
No&.&.&.

This can't be true&.&.&.

This isn't Ren&.&.&.

Where'd he go&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000150a01">
"Why&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Unable to comprehend what's going on&, I just blankly stare at Ren&.

I don't feel any hint of Ren inside me&.&.&.at all&. 
Not the "other me" either&.

&.&.&.No&, could he&.&.&.

&.&.&.Is Ren gone?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("絵ＥＶ220", 220, -1022, -574, "cg/ev/l/ev569蒼葉、犬蓮を抱き締める_l.jpg");
	Move("絵ＥＶ220", 1000, -895, -574, Dxl1, false);
	Fade("絵ＥＶ220", 1000, 1000, null, true);

	Delete("絵背景211");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
He even said he wasn't going to go&.

That everything'd be like it always was as an Allmate&.

But&.&.&.

It's not&.

Ren is neither in this Allmate or in me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.I've lost everyone&.

Sei&, the other me&, even Ren&.

There's no one left&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵背景221", 221, 0, -558, "cg/ev/l/ev569蒼葉、犬蓮を抱き締める_l.jpg");
	Move("絵背景221", 1000, -100, -436, Dxl1, false);
	Fade("絵背景221", 1000, 1000, null, true);

	Delete("絵背景220");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/9000170a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人物_動作_舐める01");
	MusicStart("SE01",0,600,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Ren starts to lick my cheek to try to console me&.

Ren&.&.&.

I can't think of anything else right now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵背景222", 222, Center, Middle, "cg/ev/ev569蒼葉、犬蓮を抱き締める.jpg");
	Move("絵背景221", 1000, -100, -158, Dxl1, false);
	Fade("絵背景222", 1000, 1000, null, true);

	Delete("絵背景221");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
I did nothing but hold the bundle of fur in my arms as 
tight as I could&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm015", 3000, 700, null);

	ClearFadeAll(3000, true);

	Wait(5000);

//※次ファイル["dm5700.nss"]

}
