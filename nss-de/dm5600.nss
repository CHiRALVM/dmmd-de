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


scene dm5600.nss_MAIN
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
	#イベントファイル名=true;
	#bg304161_5_東江タワーセイ自室前=true;

	//▼演出上の処理を解除
	SetStream("@dm012*", 0);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5610.nss";

}


scene dm5600.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	if(!$dm5590_vs_music){
		SetStream("@dm012*", 15360);
	}

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");
	FadeDelete("絵色白", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.When I return to reality&, I see Toue on his knees in 
front of me&. A smile rises to his face&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：下記修正しました（降った→振った）
//「運命は君たちに勝利の旗を降ったというわけか」

	Fw("fw東江_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【東江】
<voice name="東江" class="東江" src="voice/dm56/0000010b02">
"Fufu&, as I'd expect&. A complete loss&."

//【東江】
<voice name="東江" class="東江" src="voice/dm56/0000020b02">
"So fate led you two to victory&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/0000030a01">
"&.&.&.&.&."

{	Fw("fw東江_通常_think");}
//【東江】
<voice name="東江" class="東江" src="voice/dm56/0000040b02">
"But either way&, it's all right&. God's judgment is
 impartial&, it has to be&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,700,0,800,null,true);
	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Toue slowly gets up&, but keeps a distance between us&, 
looking slightly pained&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【東江】
<voice name="東江" class="東江" src="voice/dm56/0000050b02">
"The loser will gallantly leave the stage&. It's the least
 he could do&."

//【東江】
<voice name="東江" class="東江" src="voice/dm56/0000060b02">
"Sei is in that room over there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Toue looks to a door in the room&.
But I kept my sight on him without moving&.

The loser will gallantly leave the stage&.<k>
That means&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/0000070a01">
"Are you possibly&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.I didn't say any more than that&.

As if to confirm my suspicion&, Toue's smile deepens&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st東江_通常_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【東江】
<voice name="東江" class="東江" src="voice/dm56/0000080b02">
"The moment before the crash is the most magnificent&,
 isn't it?"

//lit&. "A flying bird's descent is beautiful&, isn't it?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/0000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_足音_歩く03");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1200,0,800,null,true);
	DeleteAllSt(200,true);
	SetVolumeEX("SE01", 8000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
After this&, Toue will definitely&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
&.&.&.I took my gaze off of him and started to walk towards
 the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/0000100a06">
"Aoba&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/0000110a01">
"Yeah&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg304161_5_東江タワーセイ自室前");
	FadeBG(1000,true);

	CreateTextureEX("絵背景", 100, Center, -380, "cg/bg/l/bg304161_5_東江タワーセイ自室前_l.jpg");
	Fade("絵背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I stood in front of the door without looking back to Toue&.

It's a large door covered in elaborate&, antique ornaments&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01a");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I lay my hand over the handle and give it a slight push&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm5610.nss"]

}
