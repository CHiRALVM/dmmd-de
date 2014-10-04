//<continuation number="110">
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


scene dm2350.nss_MAIN
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

	//▼超速対応
	//$CautionAlarm=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2360.nss";

}


scene dm2350.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304081_5_東江タワー物置部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.About thirty minutes have passed since then&.

Noiz hasn't returned yet&.

&.&.&.He's late&.

This is too weird&.
Whatever's happened&, it's made him really late&.

Did something bad actually happen?
Was he caught in the middle of something?

I don't want to assume the worst&, but even if it's Noiz 
we're talking about&, I can't deny the possibility&.

Do I go look for him&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//※非常事態アラームが繰り返し鳴る
	CreateSE("@EFWIN/SE11","se物体_東江タワー_アラーム01L");//あきゅん「ＳＥ：se物体_東江タワー_アラーム01L」
	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",0,150,0,1000,null,true);

	$CautionAlarm=true;

//あきゅん「音声加工：ここの二言は繋げて音のみで」
	dm2350Alam();
	Wait(1000);
	SetBacklog("「非常事態が発生しました。これより約５分後に地下階より順次、隔壁による通路遮断を開始します」", "voice/dm23/5000010e10", アナウンス);
	SetBacklog("「システムを一時的に停止します。通路に出ているスタッフは速やかに避難して下さい。繰り返します。非常事態が発生しました」", "voice/dm23/5000020e10", アナウンス);
//	WaitKey(1000);

//嶋：音のみということでコメントアウト
//=================================================
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【アナウンス】
//<voice name="アナウンス" class="アナウンス" src="voice/dm23/5000010e10">
-This is an emergency&. Five minutes after this message&,
 partition walls will block the passages sequentially from
 floor to floor&, starting from the basement&.-

-Please evacuate the premises immediately&. Staff members
 on the passages should evacuate as soon as possible&.
 I repeat&, this is an emergency&.-

//【アナウンス】
//<voice name="アナウンス" class="アナウンス" src="voice/dm23/5000020e10">

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
=================================================//

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/5000030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I don't know what the deal is&, but something 
sure is happening&.

&.&.&.I have to go look for Noiz&.

{	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,500,0,1000,null,false);}
After gazing at the cube in my hand&, I used the shelf as 
a support and stood up slowly&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/5000040a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
To be honest&, the burn on my side is considerably painful&. I break out in a cold sweat&. 

But now's not the time to say something like that&.

{	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);}
I activated Ren who was in sleep mode in my bag&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/5000050a06">
"Aoba&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/5000060a01">
"Ren&, things are getting kinda ugly&. I'm in a pretty bad
 shape too&, so I need your support&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/5000070a06">
"Are you okay?"

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/5000080a01">
"Can't quite say I am&, but I have to try my best&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	dm2350_Delete();

	SetVolumeEX("@EFWIN/SE11", 1200, 250, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304052_5_東江タワー研究エリア廊下02");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Holding my side&, I leave the room as fast as I can&.

When I emerged into the hallway&, I could hear the alarm 
much more clearly&.

{	CreateSE("SE01","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE01",500,400,0,1000,null,false);}
From a distance I heard sounds like the earth was rumbling&,
too&. Maybe it's the sound of the partitions closing&. 

{	SetVolumeEX("SE01", 5000, 0, null);}
Maybe Noiz isn't on the floor anymore?

I placed the cube on my palm&, and tried pushing where its  eyes were&, like Noiz said&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※きゅぴん、とウサキューブ起動音
	CreateSE("SE02","se物体_コイル_操作音03");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

{	Fw("fwAMウサギモドキ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm23/5000081c09">
"You called?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/5000090a01">
"Is Noiz on this floor?"

{	Fw("fwAMウサギモドキ_通常_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm23/5000100c09">
"No&."

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/5000110a01">
"I see&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Let's go upstairs for now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

//※次ファイル["dm2360.nss"]

}
