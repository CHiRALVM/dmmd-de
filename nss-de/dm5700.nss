//<continuation number="70">
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


scene dm5700.nss_MAIN
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
	#bg304012_1_東江タワー全景崩壊後=true;
	#bg304022_1_東江タワー前通り崩壊後=true;
	#bg002012_1_旧住民区全景=true;
	
	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5710.nss";

}


scene dm5700.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,700,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg002012_1_旧住民区全景");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -479, -578, "cg/bg/l/bg002012_1_旧住民区全景_l.jpg");
	FadeDelete("上背景", 1000, null, true);

	Move("絵背景100", 2000, -479, -265, Dxl1, true);

	SetVolumeEX("@dm015", 3000, 450, null);

	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
After the central part of Oval Tower collapsed&, all 
functions of Platinum Jail came to a halt&.

But a quick intervention from the mainland calmed the 
chaos&.

The cause of Oval Tower's collapse was said to be the 
shutdown of its main system and a subsequent terrorist 
attack&.

Most of the people left in the tower were miraculously 
saved&, and there were no deaths or critical injuries&.

Before the tower began to act up&, a message advising 
everyone to take refuge was apparently transmitted&.

However&, a portion of Toue's inner personnel are 
missing&.


Taking advantage of this opportunity&, Toue's plans&, 
research&, and experiments were brought into the light&.

Toue Inc&.'s affiliated businesses have been undertaken 
by different companies&. Allmates as well&.

The initial bug was erased&, and all existing Allmates 
were distributed the fix free of charge&.

Even the Rhyme companies have been transformed&, and 
Usui is no longer used&.

Soon&, Toue Inc&.'s presence will fade from Midorijima&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg101011_1_旧住民区通り表");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Right now the islanders are active in their efforts to 
take back Midorijima&.

Koujaku is still a hairdresser&, and I hear many rumors 
about Noiz's team&.

Mink broke all contact&, but I don't think he'd die so 
easily&.

Clear visits Heibon sometimes&.

Mizuki regained consciousness&. He can't leave the hospital 
yet&, but he's always smiling whenever I come to visit him&.

And&.&.&.

I returned to the Old Resident District and passed my days 
with Granny&.

The headaches feel almost like a lost memory and the 
feeling in my hair disappeared&.

Everything&.&.&. is over&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

//※テレビのニュース画面
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");

	Wait(1000);

	CreateTextureEXadd("絵演効果", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	CreateTextureSP("絵演背景1", 100, Center, Middle, "cg/bg/bg304022_1_東江タワー前通り崩壊後.jpg");

	Fade("絵演効果", 0, 300, null, true);

	CreateSE("SE01","se物体_テレビ_オン");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//※加工：テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000010e07">
"And now a follow-up report on the demolition of Oval Tower that occured only days ago&."

//※加工：テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000020e07">
"According to a statement given by the government&, there
 were explosives planted in the basement level of the
 tower&, likely a crime done by terrorists&."

//※加工：テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000030e07">
"A thorough investigation is still ongoing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//以下予備台詞
//【女アナウンサー】
//<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000040e07">
//「政府の発表によりますと、タワーの地下部分には爆薬が仕込まれており、『怪盗ドーリス』と名乗る２人組による犯行の可能性が高く、現在もその行方を追っています」

	CreateTextureEX("絵演背景2", 101, 0, -488, "cg/bg/bg304012_1_東江タワー全景崩壊後.jpg");
	Move("絵演背景2", 1000, 0, -218, Dxl1, false);
	Fade("絵演背景2", 1000, 1000, null, true);
	Delete("絵演背景1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//※加工：テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000050e07">
"The tower's collapse caused some damage&, but all of the
 staff and citizens inside had previously been alerted by
 Coil to evacuate&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//※加工：テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000060e07">
"There are no reports of casualties or injuries&."

//※加工：テレビ
//【女アナウンサー】
<voice name="女アナウンサー" class="女アナウンサー" src="voice/dm57/0000070e07">
"There is currently an investigation going on in regards to the location of Toue Inc&.'s group members&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	ClearFadeAll(3000, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
&.&.&.And so a year passed&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

//※次ファイル["dm5710.nss"]

}
