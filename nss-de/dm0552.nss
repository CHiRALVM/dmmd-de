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


scene dm0552.nss_MAIN
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
	$GameName = "dm0560.nss";

}


scene dm0552.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「今は我慢するしかない」を選んだ場合
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
This guy will never tell me what it is&, but I have to give in to his demands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/5200010a01">
"&.&.&.I understand&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/5200020a05">
"We're leaving as soon as possible&. Get ready&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE03","se戦闘_打撃_風切り高01");
	MusicStart("SE03",0,500,0,1000,null,false);

	Wait(500);

	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,600,0,700,null,false);
	CreateSE("SE02","se物体_ピルケース_ふる01");
	MusicStart("SE02",0,400,0,1500,null,false);
	SetVolumeEX("SE02", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Mink takes the medication I take for my headaches out 
of his breast pocket and throws it to me&. That takes 
me by surprise and I barely catch it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
If I take this then my headaches will calm down&.
And he said to get ready&.&.&. Oh yeah&, where's my bag?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0560.nss"]

}
