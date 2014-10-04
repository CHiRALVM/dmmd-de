//<continuation number="0">
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


scene dm0384.nss_MAIN
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
	$GameName = "dm0390.nss";

}


scene dm0384.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	WaitKey(2000);

	CreateTextureSP("絵背景100", 100, 0, -536, "cg/bg/l/bg104031_5_蒼葉宅自室消灯_l.jpg");

	Move("絵背景100", 1000, 0, -576, Dxl1, false);
	DrawDelete("上背景", 1000, 100, Dxl1, "slide_02_00_0", true);

	SetVolumeEX("SE*", 3000, 0, null);

//※演出：以下「選択肢：屋根から何か音がした（クリアポイント＋１）」の場合差し込みーーーー

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.&.Hm?

When I felt a breeze and opened my eyes&, there was a 
gaping hole on the door to the veranda&.

&.&.&.&.&.&.That gas mask guy&.&.&.&.&.&.

&.&.&.&.&.&.But I kinda don't care anymore&.
I don't wanna get up&.

In the end&, I fell asleep as it was&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
	Wait(3000);

//※次ファイル["dm0390.nss"]

}
