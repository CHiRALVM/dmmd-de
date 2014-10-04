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


scene dm0310.nss_MAIN
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
	$GameName = "dm0320.nss";

}


scene dm0310.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm005",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/1000010a04">
"Well then&, I'll be going&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：傘を差す
	CreateSE("SE01","se物体_傘_開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"buクリア_通常マスクあり傘_normal");
	FadeSt("C",200,true);

	Wait(1000);

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	Wait(500);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Even though it still isn't raining&, he opens the 
umbrella&, turns around&, and leaves&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/1000020a01">
"&.&.&.What just happened?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I stare at the man's back in utter amazement&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/1000030a01">
"&.&.&.I'll just go back in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
For some reason&.&.&. I have the feeling I've been made fun 
of by a tanuki or a fox or something&.

I didn't see anything&. 
&.&.&.Yeah&, not a thing&.

I make up my mind and return to the shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
When I return inside&, I find Bonjin-kun completely out 
of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se動物_足音_歩く凡人01L");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("C",740, @50,@0,"stAM凡人くん_通常_normal");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm03/1000040e59">
"Cleaning&.&.&. cleaning&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.That's right&.

That gas mask guy made me completely forget&.

The shop is still in a crazy mess because of those 
brats&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/1000050a01">
"Aah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
First the kids&, then the gas mask guy&.&.&. Today's just 
one of those days&.

Suddenly feeling tired&, I slowly begin to put away the 
items that lay scattered around back in order&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(1000);

//※次ファイル["dm0320.nss"]

}
