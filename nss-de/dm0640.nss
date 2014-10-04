//<continuation number="40">
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


scene dm0640.nss_MAIN
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
	$GameName = "dm0640sl.nss";

}


scene dm0640.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -515, -485, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I see a door slightly opened that looks like a back 
entrance along the wall&. <k>Koujaku peeks into it cautiously&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw紅雀_通常_cool");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/4000010a02">
"&.&.&.Is anyone in here?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/4000020a05">
"We're all going in&."

{	Fw("fw紅雀_通常_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/4000030a02">
"As far as it goes&, we should wait for the right chance to
 get near those guys&. We don't know what's in there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
We decide that Koujaku&, Mink&, Clear&, and I will go inside&.

Noiz will be on the sidelines&, acting as network 
surveillence and erasing real-time history of us 
being there&.

Noiz stands back a bit and has his keyboard and monitor 
connected to his Coil&. He begins the operation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/4000040a03">
"There's no problems on my side&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0640sl.nss"]

}
