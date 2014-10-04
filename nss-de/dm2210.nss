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


scene dm2210.nss_MAIN
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
	#bg302071_5_グリッター脱衣所=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2210sl.nss";

}


scene dm2210.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302071_5_グリッター脱衣所");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_水_シャワー01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(2000);

	SetVolumeEX("SE01", 1000, 0, null);
	CreateSE("SE02","se擬音_水_シャワー閉める01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(2000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景", 100, -111, -385, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Move("絵背景", 500, -111, -440, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
After taking a shower&, a sudden drowsiness came over me 
and I collapsed onto the bed in my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I woke up&, it was already midnight&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

	Fade("絵色黒", 500, 500, null, true);
	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, Dxl1, true);
	Wait(300);
	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I was lying facedown when something started jumping on my  back&, waking me up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, Dxl1, true);

	Wait(500);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/1000010a06">
"Aoba&, wake up&. Aoba&."

{	DeleteFw();
	FadeDelete("絵色黒", 500, null, true);
	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000020a01">
"Nn&.&.&. Ren&.&.&.? What&, I thought you were in sleep mode&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/1000030a06">
"You activated me saying you wanted someone to talk to
 before going to bed&. Now wake up&."

{	Fw("fw蒼葉_通常_trip");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000040a01">
"What's the matter? Is Clara here or something?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/1000050a06">
"This is not the time for jokes&. Several human beings are
 surrounding this building&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000060a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm007a",0,450,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
My sleepiness instantly disappears and I get out of bed&.

Breathing quietly&, I focus all of my effort into listening&.

&.&.&.Something must be going on outside the window&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000070a01">
"Why&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/1000080a06">
"I do not know the details&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000090a01">
"We don't have anyone we know in Platinum Jail&. Anyway&,
 we'd better get out of here&, right?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/1000100a06">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I get dressed&, put Ren in my bag&, and leave the room&.
I head straight to Noiz's room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000110a01">
"Noiz&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	PrintGO("上背景", 5000);
	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);
	FadeDelete("上背景", 500, null, true);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
Noiz had already finished preparing and stood in the 
middle of the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000120a01">
"I don't know what's going on&, but it looks dangerous&, so
 let's run!"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/1000130a03">
"&.&.&.Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Despite his answer&, Noiz doesn't move&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000140a01">
"Hurry up&. What now?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/1000150a03">
"Won't it be fine if you escape by yourself?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/1000160a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/1000170a03">
"I'll escape on my own&. There was no point in you coming
 over here to get me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.Does he really have to act like this now?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2210sl.nss"]

}
