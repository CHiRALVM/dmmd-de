//<continuation number="50">
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


scene dm0170.nss_MAIN
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
	$GameName = "dm0180.nss";

}


scene dm0170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101031_1_旧住民区通り裏路地紅時雨");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When Koujaku catches my gaze&, he smiles&. 

{
	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/7000010a02">
"What&, what's the matter? Admiring my manliness?" 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/7000020a01">
"Shut up&, you hippo&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm01/7000030e49">
"Hey! Why are you calling Koujaku-san a hippo!?" 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I convey thanks to Koujaku by flashing a smile as I 
criticize his joke&.

Koujaku returns only a silent wink&, saying that he 
understands&.

I can't believe I'm saying this&, but it actually gets to 
me a little&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/7000040a01">
"Well then&, I'm going&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/7000050a02">
"Right&. Be careful&." 

{
	DeleteAllSt(200,true);
}
I part with Koujaku while waving slightly&, and begin to 
walk again&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景", 100, -626, -509, "cg/bg/l/bg101031_1_旧住民区通り裏路地紅時雨_l.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The delivery destination was close when I turned left 
at the road and headed straight&.

As I turn a corner&, I see a man crouching down by the 
roadside&.

He whispers something&, but I don't understand the contents
well&.

These days&, you could see people doing this pretty often&.

Sitting down on the ground and looking at the sky&, 
muttering to themselves against the wall like that&.

People like this have always existed&, but it feels like 
more of them have been showing up lately&.

Well&, as long as you stay away from them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I quickly pass by the whispering man&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm0180.nss"]

}
