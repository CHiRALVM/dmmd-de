//<continuation number="140">
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


scene dm4270.nss_MAIN
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
	$GameName = "dm4280lv.nss";

}


scene dm4270.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The sound of rugged footsteps fade into the distance&, and 
I sink to the floor&, looking at Clear&.

It's unbelievable how Clear was able to gather the will-
power to stand up in that situation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000010a01">
"&.&.&.Clear?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_水_蒸発硫酸01");
	MusicStart("SE01",1000,600,0,600,null,false);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/7000020a04">
"Yes?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000030a01">
"Are you okay&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
There are still fumes floating above him&.&.&.
My voice goes hoarse from tension and terror&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000040a01">
"You&.&.&. Why are you acting so calm? We need to wash it off
 with water or&.&.&. or something&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/7000050a04">
"I'm fine&."

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000060a01">
"No you're not! There are still flames&, hurry up and&.&.&.!"

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/7000070a04">
"I'm fine like this&."

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000080a01">
"This isn't the time to say stuff like that&, okay!? Just
 stop it already&.&.&.!"

{
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",180,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/7000090a04">
"Is that an order?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000100a01">
"Huh&.&.&.?"

{
	SetVolumeEX("SE*", 2000, 0, null);
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/7000110a04">
"If it's not an order&, then&.&.&. I won't listen!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
After speaking&, Clear suddenly runs off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000120a01">
"Wha-? Hey&, wait! Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
What!? Is he running away?
Where is he going&, anyway!?

I don't understand a single thing&, and immediately run 
after him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg疾走001.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Rotate("絵背景", 0, @0, @0, @-30, null,true);

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Seriously&, what is he thinking&.&.&.!?

You can't just ignore sulfuric acid burning up your face&, 
you'd have to be insane!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
And now he's even running away&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000130a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

//覇：モノが来てないのでなんとなく反転。変なら消します
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg301031_5_プラチナジェイル通り路地01.jpg");
	Rotate("絵背景", 0, @0, @180, @0, null,true);

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_1", true);

	SetVolumeEX("@dm*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Clear is surprisingly fast&, and I eventually lose sight of him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/7000140a01">
"Where did he go&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se擬音_水_はねる12");
	MusicStart("SE01",1000,700,0,1400,null,false);

	Wait(200);

	CreateSE("SE02","se擬音_水_はねる12");
	MusicStart("SE02",1000,700,0,1200,null,false);

	Wait(200);

	CreateSE("SE03","se擬音_水_はねる11");
	MusicStart("SE03",1000,700,0,1200,null,false);

	Wait(200);
	CreateSE("SE02","se擬音_水_はねる12");
	MusicStart("SE02",1000,700,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
I stop&, and from somewhere I hear the sound of water&.

To my left is a side street&, and it seems the sound is 
coming from there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//※次ファイル["dm4280lv.nss"]

}
