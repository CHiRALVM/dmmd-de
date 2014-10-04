//<continuation number="20">
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


scene dm5140.nss_MAIN
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
	#bg301041_5_プラチナジェイル通り路地02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5150.nss";

}


scene dm5140.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301021_5_プラチナジェイル中通り");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, 0, -574, "cg/bg/l/bg301021_5_プラチナジェイル中通り_l.jpg");

	Delete("上背景");

	DrawDelete("絵色黒", 250, 100, Dxl1, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I chase after Ren out of the store&, garnering the 
attention of the employees and customers around&.

I run after the bundle of blue down a side street&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/4000010a01">
"Ren&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("絵背景101", 101, -1021, -574, "cg/bg/l/bg301021_5_プラチナジェイル中通り_l.jpg");

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I follow him into the side street&, panicked&.
I don't see Ren anywhere&.

He's a quick one&.
But why did he go and&.&.&.

Did I make him angry?

&.&.&.No&, that can't be it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
It's possible for some Allmates to adopt human emotions&, 
but this is against his set behavioral pattern&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
It's like how Beni has a short-tempered personality in him&.
Ren was set to a patient type&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Even if his mood did swing a little bit&, I've never seen 
an Allmate become so emotional&.

But it was clear that Ren was offended back there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Maybe it really is the damage he recieved from that 
Drive-By Rhyme?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I turned every corner&, my thoughts racing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/4000020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※「セイと接触する蒼葉」へ
//※次ファイル["dm5150.nss"]

}
