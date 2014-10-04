//<continuation number="240">
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


scene dm2310.nss_MAIN
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
	$GameName = "dm2320lv.nss";

}


scene dm2310.nss
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

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Suddenly&, Noiz reaches out his hand and touches the burn 
on my side&.

I flinch and try to move back&, but the pain stops me from 
doing so&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000010a01">
"What the hell do you think you're doing!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I protest to him with an angry glare&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000020a03">
"It hurts&, right? All because you covered for me&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000030a03">
"But I didn't ask you to&. I don't get why you'd go so far&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000040a01">
"This again&.&.&. You would've bit it if that hit you&. What's
 wrong with me covering you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000050a03">
"Same goes for you&. If you'd made one wrong step you
 would've died&."

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000060a01">
"&.&.&.Well&, you're right about that&."

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000070a03">
"I still don't get why you jumped out in front of me&.
 Do you have a death wish?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000080a01">
"Huh? What're you talking about? It's not like I want your
 gratitude or anything&. Don't you care if you die or not?"

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000090a03">
"Nah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000100a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(100,true);

//※ばきっ
	CreateSE("SE01","se戦闘_打撃_ヒット高01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.In an instant&, the blood rises to my head and I 
seriously punch Noiz's shit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000110a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Taken aback&, I glance at my fist and then to Noiz's face&.

His cheek is a swelling red with a bit of blood seeping 
from his mouth&.

Shit&, I've really done it now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_pride");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000120a03">
"&.&.&.Heh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He lightly licks off the blood from his slit lip and 
smiles&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000130a03">
"&.&.&.Bring it on&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 50, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000140a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Returning the punch&, an impact slams into my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_pinch",1000,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000150a01">
"Ouch&.&.&. You little-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※ばきっと殴る
//	CreateSE("SE11","se環境_戦闘_戦闘01L");//あきゅん「ＳＥ：se環境_戦闘_戦闘01L」
//	MusicStart("SE11",0,600,0,1000,null,true);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000160a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 50, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	FwPro("fw蒼葉_通常_pinch",1000,"fw蒼葉_通常_rage");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000170a01">
"Ouch! You-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050c]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000180a03">
"&.&.&.Shut up!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//※２人もろとも床に転がる
	SetVolumeEX("SE11", 300, 0, null);

	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵背景200", 200, -515, -472, "cg/bg/l/bg304081_5_東江タワー物置部屋_l.jpg");
	Move("絵背景200", 200, -515, -572, Dxl1, false);
	Fade("絵背景200", 200, 1000, null, true);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 50, null, true);

	CreateSE("SE03","se人体_衝撃_転倒02");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000190a01">
"Oww&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
The two of us keep trading punches&.

During our fight&, we tumble to the floor&.

Noiz is on top of me and shoves his knee into the burn on 
my side&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE04","se人体_動作_衣擦れ25");
	MusicStart("SE04",0,500,0,1400,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000200a01">
"Agh&, my side&, that really hurts!"

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000210a03">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ05");
	MusicStart("SE03",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
He must've gotten the message&, and he held back his knee&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

	FwPro("fw蒼葉_通常_pain",4500,"fw蒼葉_通常_rage");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000220a01">
"Owowowow&, ow&.&.&. Move&, I said it hurts!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("@dm*", 500, 0, null);

//※どかっと蹴る
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/1000230a03">
"-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Overloaded with pain&, I kick as hard as I can into Noiz's 
stomach&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/1000240a01">
"Shit&, sorry&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2320lv.nss"]

}
