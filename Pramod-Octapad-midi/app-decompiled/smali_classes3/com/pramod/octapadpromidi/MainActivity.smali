.class public Lcom/pramod/octapadpromidi/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pramod/octapadpromidi/MainActivity$PadTouch;
    }
.end annotation


# static fields
.field private static final HIT_BLOCK_MS:J = 0x5L

.field private static final KEY_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final KEY_KIT_INDEX:Ljava/lang/String; = "kit_index"

.field private static final KEY_LAST_LIST_FOLDER_URI:Ljava/lang/String; = "last_list_folder_uri"

.field private static final MAX_KITS:I = 0x32

.field private static final PAD_COUNT:I = 0x8

.field private static final PREF_NAME:Ljava/lang/String; = "OctapadSettings"

.field private static final REQ_LIST_FOLDER:I = 0x7d3

.field private static final REQ_LOAD_FOLDER:I = 0x7d2

.field private static final REQ_PICK_SINGLE_WAV:I = 0x1389

.field private static final REQ_SAVE_FOLDER:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private activePointerId:[I

.field private advControlBar:Landroid/view/View;

.field private assistSoundId:Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

.field private assistSoundUri:Landroid/net/Uri;

.field private audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

.field private btnEditMode:Landroid/widget/Button;

.field private btnEq:Landroid/widget/Button;

.field private btnLoadKit:Landroid/widget/Button;

.field private btnLoops:Landroid/widget/Button;

.field private btnNextKit:Landroid/widget/Button;

.field private btnPrevKit:Landroid/widget/Button;

.field private btnRenameKit:Landroid/widget/Button;

.field private btnSaveKit:Landroid/widget/Button;

.field private chkDelay:Landroid/widget/CheckBox;

.field private copySourcePad:I

.field private currentKitName:Ljava/lang/String;

.field private currentPresetKit:I

.field private editMode:Z

.field private fxControlBar:Landroid/view/View;

.field private isVisible:Z

.field private kitIndex:I

.field private lastHitTime:[J

.field private midiManager:Landroid/media/midi/MidiManager;

.field private midiOutputPort:Landroid/media/midi/MidiOutputPort;

.field private midiOutputPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/midi/MidiOutputPort;",
            ">;"
        }
    .end annotation
.end field

.field private openedMidiDevice:Landroid/media/midi/MidiDevice;

.field private padChokeGroup:[I

.field private padDelayLevel:[F

.field private padDelayOn:[Z

.field private padDelayTime:[F

.field private padEqHigh:[F

.field private padEqLow:[F

.field private padEqMid:[F

.field private padPitch:[F

.field private padVolume:[F

.field private pads:[Landroid/widget/Button;

.field private pendingSaveKitName:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private final presetKitNames:[Ljava/lang/String;

.field private final presetKits:[[I

.field private samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

.field private seekChokeGroup:Landroid/widget/SeekBar;

.field private seekDelayLevel:Landroid/widget/SeekBar;

.field private seekDelayTime:Landroid/widget/SeekBar;

.field private seekEqHigh:Landroid/widget/SeekBar;

.field private seekEqLow:Landroid/widget/SeekBar;

.field private seekEqMid:Landroid/widget/SeekBar;

.field private seekPitch:Landroid/widget/SeekBar;

.field private seekVolume:Landroid/widget/SeekBar;

.field private selectedPad:I

.field private selectedRawResIds:[I

.field private selectedWavUris:[Landroid/net/Uri;

.field private swapSourcePad:I

.field private txtKitName:Landroid/widget/TextView;

.field private txtMidiStatus:Landroid/widget/TextView;

.field private txtSelectedPad:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivePointerId(Lcom/pramod/octapadpromidi/MainActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->activePointerId:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetadvControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->advControlBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbtnEq(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEq:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchkDelay(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->chkDelay:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->copySourcePad:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->editMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfxControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->fxControlBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastHitTime(Lcom/pramod/octapadpromidi/MainActivity;)[J
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->lastHitTime:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmidiOutputPort(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/media/midi/MidiOutputPort;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiOutputPort:Landroid/media/midi/MidiOutputPort;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmidiOutputPorts(Lcom/pramod/octapadpromidi/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiOutputPorts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenedMidiDevice(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/media/midi/MidiDevice;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadChokeGroup(Lcom/pramod/octapadpromidi/MainActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadDelayLevel(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadDelayOn(Lcom/pramod/octapadpromidi/MainActivity;)[Z
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadDelayTime(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadEqHigh(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadEqLow(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadEqMid(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadPitch(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadVolume(Lcom/pramod/octapadpromidi/MainActivity;)[F
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpads(Lcom/pramod/octapadpromidi/MainActivity;)[Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsamples(Lcom/pramod/octapadpromidi/MainActivity;)[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekChokeGroup(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekChokeGroup:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekDelayLevel(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekDelayLevel:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekDelayTime(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekDelayTime:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekEqHigh(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqHigh:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekEqLow(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqLow:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekEqMid(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqMid:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekPitch(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekPitch:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekVolume(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekVolume:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPad(Lcom/pramod/octapadpromidi/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedRawResIds(Lcom/pramod/octapadpromidi/MainActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedWavUris(Lcom/pramod/octapadpromidi/MainActivity;)[Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->swapSourcePad:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxtKitName(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtKitName:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtMidiStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtSelectedPad(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtSelectedPad:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->copySourcePad:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeditMode(Lcom/pramod/octapadpromidi/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->editMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmidiOutputPort(Lcom/pramod/octapadpromidi/MainActivity;Landroid/media/midi/MidiOutputPort;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiOutputPort:Landroid/media/midi/MidiOutputPort;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenedMidiDevice(Lcom/pramod/octapadpromidi/MainActivity;Landroid/media/midi/MidiDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingSaveKitName(Lcom/pramod/octapadpromidi/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->pendingSaveKitName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedPad(Lcom/pramod/octapadpromidi/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/MainActivity;->swapSourcePad:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiOutputPorts:Ljava/util/ArrayList;

    .line 85
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    .line 86
    new-array v1, v0, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    .line 87
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    .line 88
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    .line 89
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    .line 90
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    .line 91
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    .line 92
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    .line 93
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    .line 94
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    .line 95
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    .line 96
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    .line 98
    iput-boolean v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->editMode:Z

    .line 99
    const/4 v2, 0x1

    iput v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 101
    const-string v2, "KIT 1"

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pendingSaveKitName:Ljava/lang/String;

    .line 103
    const/4 v2, -0x1

    iput v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->copySourcePad:I

    .line 104
    iput v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->swapSourcePad:I

    .line 105
    new-array v2, v0, [Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    .line 106
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->activePointerId:[I

    .line 107
    iput v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentPresetKit:I

    .line 108
    const/16 v1, 0x19

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKitNames:[Ljava/lang/String;

    .line 109
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v0}, [I

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    .line 110
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->lastHitTime:[J

    return-void
.end method

.method static access$1208(Lcom/pramod/octapadpromidi/MainActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/pramod/octapadpromidi/MainActivity;

    .line 113
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 114
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 115
    return v0
.end method

.method static access$1210(Lcom/pramod/octapadpromidi/MainActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/pramod/octapadpromidi/MainActivity;

    .line 119
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 120
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 121
    return v0
.end method

.method private hideSystemUI()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    return-void
.end method

.method private initPads()V
    .locals 8

    .line 525
    sget v0, Lcom/pramod/octapadpromidi/R$id;->pad1:I

    sget v1, Lcom/pramod/octapadpromidi/R$id;->pad2:I

    sget v2, Lcom/pramod/octapadpromidi/R$id;->pad3:I

    sget v3, Lcom/pramod/octapadpromidi/R$id;->pad4:I

    sget v4, Lcom/pramod/octapadpromidi/R$id;->pad5:I

    sget v5, Lcom/pramod/octapadpromidi/R$id;->pad6:I

    sget v6, Lcom/pramod/octapadpromidi/R$id;->pad7:I

    sget v7, Lcom/pramod/octapadpromidi/R$id;->pad8:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v0

    .line 526
    .local v0, "padIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v1

    .line 528
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    const v3, 0x3f4ccccd    # 0.8f

    aput v3, v2, v1

    .line 529
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    .line 530
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 531
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    const/high16 v4, 0x43160000    # 150.0f

    aput v4, v2, v1

    .line 532
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v2, v1

    .line 533
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 534
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    aput v4, v2, v1

    .line 535
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    aput v4, v2, v1

    .line 536
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->activePointerId:[I

    const/4 v4, -0x1

    aput v4, v2, v1

    .line 537
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->lastHitTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 538
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSoundEffectsEnabled(Z)V

    .line 539
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHapticFeedbackEnabled(Z)V

    .line 540
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 541
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLongClickable(Z)V

    .line 542
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 543
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 544
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->pads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    new-instance v3, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;

    invoke-direct {v3, p0, v1}, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;-><init>(Lcom/pramod/octapadpromidi/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 547
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private initPresets()V
    .locals 16

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pramod/octapadpromidi/MainActivity;->presetKitNames:[Ljava/lang/String;

    .line 126
    .local v1, "strArr":[Ljava/lang/String;
    const-string v2, "Intro Patch"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 127
    const-string v2, "Dadra Kaharwa"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 128
    const-string v2, "Duff Patch"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 129
    const-string v2, "Kaharwa Dadra Manjira"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 130
    const-string v2, "Deepchandi Patch"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 131
    const-string v2, "Bhanda Huk Patch"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 132
    const-string v2, "Disco Patch"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 133
    const-string v2, "Dholak Manjira Patch"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 134
    const/16 v2, 0x8

    .line 135
    .local v2, "i":I
    const/16 v11, 0x8

    const-string v12, "Dhumal Patch"

    aput-object v12, v1, v11

    .line 136
    const/16 v11, 0x9

    const-string v12, "Gaura Gauri Patch"

    aput-object v12, v1, v11

    .line 137
    const/16 v11, 0xa

    const-string v12, "Tiger Dhumal Patch"

    aput-object v12, v1, v11

    .line 138
    const/16 v11, 0xb

    const-string v12, "Groomer Patch"

    aput-object v12, v1, v11

    .line 139
    const/16 v11, 0xc

    const-string v12, "Dandiya Patch"

    aput-object v12, v1, v11

    .line 140
    const/16 v11, 0xd

    const-string v12, "CG Patch"

    aput-object v12, v1, v11

    .line 141
    const/16 v11, 0xe

    const-string v12, "Jasgeet Manjira Patch"

    aput-object v12, v1, v11

    .line 142
    const/16 v11, 0xf

    const-string v12, "Jasgeet Jhanj Patch"

    aput-object v12, v1, v11

    .line 143
    const/16 v11, 0x10

    const-string v12, "CG Sambalpuri"

    aput-object v12, v1, v11

    .line 144
    const/16 v11, 0x11

    const-string v12, "Panthi Patch"

    aput-object v12, v1, v11

    .line 145
    const/16 v11, 0x12

    const-string v12, "Nagpuri Patch"

    aput-object v12, v1, v11

    .line 146
    const/16 v11, 0x13

    const-string v12, "Percussion Patch"

    aput-object v12, v1, v11

    .line 147
    const/16 v11, 0x14

    const-string v12, "Aana N Gori Ab"

    aput-object v12, v1, v11

    .line 148
    const/16 v11, 0x15

    const-string v12, "Chham Chham Baje Patch"

    aput-object v12, v1, v11

    .line 149
    const/16 v11, 0x16

    const-string v12, "CG Slow Karma Patch"

    aput-object v12, v1, v11

    .line 150
    const/16 v11, 0x17

    const-string v12, "CG Karma Patch"

    aput-object v12, v1, v11

    .line 151
    const/16 v11, 0x18

    const-string v12, "Drum Set Western Patch"

    aput-object v12, v1, v11

    .line 152
    const/4 v11, 0x0

    .line 153
    .local v11, "i2":I
    :goto_0
    const/16 v12, 0x19

    if-ge v11, v12, :cond_1

    .line 154
    if-nez v11, :cond_0

    const-string v12, ""

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v11, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 155
    .local v12, "suffix":Ljava/lang/String;
    :goto_1
    iget-object v13, v0, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    .line 156
    .local v13, "iArr":[[I
    new-array v14, v2, [I

    .line 157
    .local v14, "iArr2":[I
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "crash"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v8, "raw"

    invoke-virtual {v15, v9, v8, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v14, v3

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tom"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v14, v4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rim"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v14, v5

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "clap"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v14, v6

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "kick"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v14, v7

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "snare"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    aput v9, v14, v10

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ohat"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v3, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x6

    aput v3, v14, v9

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v4, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    aput v3, v14, v4

    .line 165
    aput-object v14, v13, v11

    .line 166
    add-int/lit8 v11, v11, 0x1

    .line 167
    const/16 v2, 0x8

    .line 168
    .end local v12    # "suffix":Ljava/lang/String;
    .end local v13    # "iArr":[[I
    .end local v14    # "iArr2":[I
    move v8, v10

    const/4 v3, 0x0

    move v10, v4

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method private initSeekBars()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekVolume:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 551
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekPitch:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 552
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekVolume:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$12;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 568
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekPitch:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$13;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 584
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->chkDelay:Landroid/widget/CheckBox;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$14;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 592
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekDelayTime:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$15;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 610
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekDelayLevel:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$16;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 628
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqHigh:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$17;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$17;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 646
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqMid:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$18;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$18;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 664
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqLow:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$19;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$19;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 682
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekChokeGroup:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$20;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$20;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 700
    return-void
.end method

.method private playPadSoundImmediate(I)V
    .locals 17
    .param p1, "index"    # I

    .line 372
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v0, v0, p1

    .line 373
    .local v0, "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->loaded:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v2, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    aget v5, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    aget v6, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    aget-boolean v8, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    aget v9, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    aget v10, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    aget v11, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    aget v12, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    aget v13, v3, p1

    iget-object v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    aget v14, v3, p1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object v4, v0

    invoke-virtual/range {v2 .. v16}, Lcom/pramod/octapadpromidi/AudioEngine;->playSample(ILcom/pramod/octapadpromidi/AudioEngine$SampleData;FFIZFFFFFIFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    goto :goto_1

    .line 374
    .restart local v0    # "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_1
    :goto_0
    return-void

    .line 377
    .end local v0    # "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :catch_0
    move-exception v0

    .line 379
    :goto_1
    return-void
.end method

.method private saveKitToFolder(Landroid/net/Uri;)V
    .locals 25
    .param p1, "folderUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1308
    move-object/from16 v1, p0

    const-string v0, "kit_data.json"

    const-string v2, ".mcn"

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p0 .. p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    .line 1309
    .local v4, "root":Landroidx/documentfile/provider/DocumentFile;
    if-nez v4, :cond_0

    .line 1310
    const-string v0, "Folder access error!"

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1311
    return-void

    .line 1313
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    .line 1314
    .local v5, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    if-nez v5, :cond_1

    .line 1315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    move-object v5, v2

    .line 1317
    :cond_1
    if-nez v5, :cond_2

    .line 1318
    const-string v0, "Cannot create kit folder!"

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1319
    return-void

    .line 1321
    :cond_2
    const/4 v2, 0x0

    .line 1323
    .local v2, "i2":I
    :goto_0
    const/16 v6, 0x8

    if-lt v2, v6, :cond_7

    .line 1324
    nop

    .line 1346
    invoke-virtual {v5, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v6

    .line 1347
    .local v6, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v6, :cond_3

    .line 1348
    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 1350
    :cond_3
    const-string v7, "application/json"

    invoke-virtual {v5, v7, v0}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v7, v0

    .line 1351
    .local v7, "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    const-string v8, "Kit Saved: "

    if-eqz v7, :cond_6

    .line 1353
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v9, v0

    .line 1354
    .local v9, "jsonData":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v10, v0

    .line 1355
    .local v10, "volArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v11, v0

    .line 1356
    .local v11, "pitchArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v12, v0

    .line 1357
    .local v12, "dlyOnArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v13, v0

    .line 1358
    .local v13, "dlyTArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v14, v0

    .line 1359
    .local v14, "dlyLArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v15, v0

    .line 1360
    .local v15, "eqHArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v16, v0

    .line 1361
    .local v16, "eqMArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v17, v0

    .line 1362
    .local v17, "eqLArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v18, v0

    .line 1363
    .local v18, "chokeArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 1364
    .local v0, "i4":I
    const/16 v19, 0x8

    move/from16 v3, v19

    move-object/from16 v19, v5

    move-object v5, v4

    move v4, v0

    .end local v0    # "i4":I
    .local v3, "i":I
    .local v4, "i4":I
    .local v5, "root":Landroidx/documentfile/provider/DocumentFile;
    .local v19, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    :goto_1
    if-ge v4, v3, :cond_4

    .line 1365
    move-object/from16 v20, v5

    .line 1366
    .local v20, "root2":Landroidx/documentfile/provider/DocumentFile;
    move-object/from16 v21, v19

    .line 1368
    .local v21, "kitFolder2":Landroidx/documentfile/provider/DocumentFile;
    :try_start_2
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    aget v0, v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v23, v5

    move-object/from16 v22, v6

    .end local v5    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v22, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v23, "root":Landroidx/documentfile/provider/DocumentFile;
    float-to-double v5, v0

    :try_start_3
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1369
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    aget v0, v0, v4

    float-to-double v5, v0

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1370
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    aget-boolean v0, v0, v4

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 1371
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    aget v0, v0, v4

    float-to-double v5, v0

    invoke-virtual {v13, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1372
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    aget v0, v0, v4

    float-to-double v5, v0

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1373
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    aget v0, v0, v4

    float-to-double v5, v0

    invoke-virtual {v15, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1374
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    aget v0, v0, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    float-to-double v5, v0

    move/from16 v24, v3

    move-object/from16 v3, v16

    .end local v16    # "eqMArray":Lorg/json/JSONArray;
    .local v3, "eqMArray":Lorg/json/JSONArray;
    .local v24, "i":I
    :try_start_4
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1375
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    aget v0, v0, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    float-to-double v5, v0

    move/from16 v16, v2

    move-object/from16 v2, v17

    .end local v17    # "eqLArray":Lorg/json/JSONArray;
    .local v2, "eqLArray":Lorg/json/JSONArray;
    .local v16, "i2":I
    :try_start_5
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 1376
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    aget v0, v0, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v5, v18

    .end local v18    # "chokeArray":Lorg/json/JSONArray;
    .local v5, "chokeArray":Lorg/json/JSONArray;
    :try_start_6
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1377
    add-int/lit8 v4, v4, 0x1

    .line 1378
    move-object/from16 v0, v20

    .line 1379
    .end local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    .local v0, "root":Landroidx/documentfile/provider/DocumentFile;
    move-object/from16 v6, v21

    .line 1383
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .local v6, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    move-object/from16 v19, v6

    goto :goto_3

    .line 1380
    .end local v0    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v5    # "chokeArray":Lorg/json/JSONArray;
    .restart local v18    # "chokeArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object/from16 v5, v18

    .end local v18    # "chokeArray":Lorg/json/JSONArray;
    .restart local v5    # "chokeArray":Lorg/json/JSONArray;
    goto :goto_2

    .end local v5    # "chokeArray":Lorg/json/JSONArray;
    .end local v16    # "i2":I
    .local v2, "i2":I
    .restart local v17    # "eqLArray":Lorg/json/JSONArray;
    .restart local v18    # "chokeArray":Lorg/json/JSONArray;
    :catch_2
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    .end local v17    # "eqLArray":Lorg/json/JSONArray;
    .end local v18    # "chokeArray":Lorg/json/JSONArray;
    .local v2, "eqLArray":Lorg/json/JSONArray;
    .restart local v5    # "chokeArray":Lorg/json/JSONArray;
    .restart local v16    # "i2":I
    goto :goto_2

    .end local v5    # "chokeArray":Lorg/json/JSONArray;
    .end local v24    # "i":I
    .local v2, "i2":I
    .local v3, "i":I
    .local v16, "eqMArray":Lorg/json/JSONArray;
    .restart local v17    # "eqLArray":Lorg/json/JSONArray;
    .restart local v18    # "chokeArray":Lorg/json/JSONArray;
    :catch_3
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v3, v16

    move-object/from16 v5, v18

    move/from16 v16, v2

    move-object/from16 v2, v17

    .end local v17    # "eqLArray":Lorg/json/JSONArray;
    .end local v18    # "chokeArray":Lorg/json/JSONArray;
    .local v2, "eqLArray":Lorg/json/JSONArray;
    .local v3, "eqMArray":Lorg/json/JSONArray;
    .restart local v5    # "chokeArray":Lorg/json/JSONArray;
    .local v16, "i2":I
    .restart local v24    # "i":I
    goto :goto_2

    .end local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v24    # "i":I
    .local v2, "i2":I
    .local v3, "i":I
    .local v5, "root":Landroidx/documentfile/provider/DocumentFile;
    .local v6, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v16, "eqMArray":Lorg/json/JSONArray;
    .restart local v17    # "eqLArray":Lorg/json/JSONArray;
    .restart local v18    # "chokeArray":Lorg/json/JSONArray;
    :catch_4
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v3, v16

    move-object/from16 v5, v18

    move/from16 v16, v2

    move-object/from16 v2, v17

    .line 1381
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v17    # "eqLArray":Lorg/json/JSONArray;
    .end local v18    # "chokeArray":Lorg/json/JSONArray;
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "eqLArray":Lorg/json/JSONArray;
    .local v3, "eqMArray":Lorg/json/JSONArray;
    .local v5, "chokeArray":Lorg/json/JSONArray;
    .local v16, "i2":I
    .restart local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    .restart local v24    # "i":I
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v17, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v17, "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, v23

    .line 1364
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v20    # "root2":Landroidx/documentfile/provider/DocumentFile;
    .end local v21    # "kitFolder2":Landroidx/documentfile/provider/DocumentFile;
    .end local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    .local v0, "root":Landroidx/documentfile/provider/DocumentFile;
    :goto_3
    const/16 v6, 0x8

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v2, v16

    move-object v5, v0

    move-object/from16 v16, v3

    move v3, v6

    move-object/from16 v6, v22

    .end local v24    # "i":I
    .local v6, "i":I
    goto/16 :goto_1

    .line 1385
    .end local v0    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v2, "i2":I
    .local v3, "i":I
    .local v5, "root":Landroidx/documentfile/provider/DocumentFile;
    .local v6, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v16, "eqMArray":Lorg/json/JSONArray;
    .local v17, "eqLArray":Lorg/json/JSONArray;
    .restart local v18    # "chokeArray":Lorg/json/JSONArray;
    :cond_4
    move/from16 v24, v3

    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v3, v16

    move-object/from16 v5, v18

    move/from16 v16, v2

    move-object/from16 v2, v17

    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v17    # "eqLArray":Lorg/json/JSONArray;
    .end local v18    # "chokeArray":Lorg/json/JSONArray;
    .local v2, "eqLArray":Lorg/json/JSONArray;
    .local v3, "eqMArray":Lorg/json/JSONArray;
    .local v5, "chokeArray":Lorg/json/JSONArray;
    .local v16, "i2":I
    .restart local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    .restart local v24    # "i":I
    const-string v0, "volume"

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1386
    const-string v0, "pitch"

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1387
    const-string v0, "delayOn"

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1388
    const-string v0, "delayTime"

    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1389
    const-string v0, "delayLevel"

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1390
    const-string v0, "eqHigh"

    invoke-virtual {v9, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1391
    const-string v0, "eqMid"

    invoke-virtual {v9, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1392
    const-string v0, "eqLow"

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1393
    const-string v0, "chokeGroup"

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1395
    .local v0, "out":Ljava/io/OutputStream;
    if-eqz v0, :cond_5

    .line 1396
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 1397
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1401
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v2    # "eqLArray":Lorg/json/JSONArray;
    .end local v3    # "eqMArray":Lorg/json/JSONArray;
    .end local v4    # "i4":I
    .end local v5    # "chokeArray":Lorg/json/JSONArray;
    .end local v9    # "jsonData":Lorg/json/JSONObject;
    .end local v10    # "volArray":Lorg/json/JSONArray;
    .end local v11    # "pitchArray":Lorg/json/JSONArray;
    .end local v12    # "dlyOnArray":Lorg/json/JSONArray;
    .end local v13    # "dlyTArray":Lorg/json/JSONArray;
    .end local v14    # "dlyLArray":Lorg/json/JSONArray;
    .end local v15    # "eqHArray":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v5, v19

    move-object/from16 v4, v23

    goto :goto_5

    .line 1399
    .end local v24    # "i":I
    :catch_5
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v4, v23

    goto :goto_4

    .end local v16    # "i2":I
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v23    # "root":Landroidx/documentfile/provider/DocumentFile;
    .local v2, "i2":I
    .local v4, "root":Landroidx/documentfile/provider/DocumentFile;
    .local v5, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :catch_6
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v22, v6

    .line 1400
    .end local v2    # "i2":I
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v0, "e2":Ljava/lang/Exception;
    .restart local v16    # "i2":I
    .restart local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1351
    .end local v0    # "e2":Ljava/lang/Exception;
    .end local v16    # "i2":I
    .end local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v2    # "i2":I
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :cond_6
    move/from16 v16, v2

    move-object/from16 v22, v6

    .line 1403
    .end local v2    # "i2":I
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v16    # "i2":I
    .restart local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1407
    .end local v4    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v7    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    .end local v16    # "i2":I
    .end local v22    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    goto :goto_7

    .line 1326
    .restart local v2    # "i2":I
    .restart local v4    # "root":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    :cond_7
    move/from16 v16, v2

    .end local v2    # "i2":I
    .restart local v16    # "i2":I
    iget-object v2, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aget-object v2, v2, v16

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v2, v2, v16

    if-eqz v2, :cond_b

    .line 1327
    :cond_8
    sget-object v2, Lcom/pramod/octapadpromidi/KitManager;->DEFAULT_WAV_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v5, v2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 1328
    .local v2, "old":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v2, :cond_9

    .line 1329
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 1331
    :cond_9
    const-string v3, "audio/wav"

    sget-object v6, Lcom/pramod/octapadpromidi/KitManager;->DEFAULT_WAV_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v16

    invoke-virtual {v5, v3, v6}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    .line 1332
    .local v3, "dest":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v3, :cond_b

    .line 1333
    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aget-object v6, v6, v16

    .line 1334
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_a

    .line 1335
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/pramod/octapadpromidi/FileUtil;->copyUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_6

    .line 1337
    :cond_a
    iget-object v7, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v7, v7, v16

    .line 1338
    .local v7, "i3":I
    if-eqz v7, :cond_b

    .line 1339
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/pramod/octapadpromidi/FileUtil;->copyRawToUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1344
    .end local v2    # "old":Landroidx/documentfile/provider/DocumentFile;
    .end local v3    # "dest":Landroidx/documentfile/provider/DocumentFile;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "i3":I
    :cond_b
    :goto_6
    add-int/lit8 v2, v16, 0x1

    const/4 v3, 0x0

    .end local v16    # "i2":I
    .local v2, "i2":I
    goto/16 :goto_0

    .line 1404
    .end local v2    # "i2":I
    .end local v4    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    :catch_7
    move-exception v0

    .line 1405
    .local v0, "e3":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1408
    .end local v0    # "e3":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method private scanForMcnFolders(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "folder"    # Landroidx/documentfile/provider/DocumentFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/documentfile/provider/DocumentFile;",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1421
    .local p2, "kitFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/documentfile/provider/DocumentFile;>;"
    .local p3, "kitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1422
    .local v4, "file":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1423
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, ".mcn"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1424
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1427
    :cond_0
    invoke-direct {p0, v4, p2, p3}, Lcom/pramod/octapadpromidi/MainActivity;->scanForMcnFolders(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1421
    .end local v4    # "file":Landroidx/documentfile/provider/DocumentFile;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1431
    :cond_2
    return-void
.end method

.method private setupMidi()V
    .locals 6

    .line 185
    nop

    .line 186
    const-string v0, "midi"

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 187
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiManager:Landroid/media/midi/MidiManager;

    .line 188
    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/media/midi/MidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 192
    .local v1, "infos":[Landroid/media/midi/MidiDeviceInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 193
    .local v4, "info":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p0, v4}, Lcom/pramod/octapadpromidi/MainActivity;->openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V

    .line 192
    .end local v4    # "info":Landroid/media/midi/MidiDeviceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiManager:Landroid/media/midi/MidiManager;

    new-instance v3, Lcom/pramod/octapadpromidi/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/pramod/octapadpromidi/MainActivity$1;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    new-instance v4, Landroid/os/Handler;

    .line 212
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    invoke-virtual {v2, v3, v4}, Landroid/media/midi/MidiManager;->registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .line 214
    .end local v0    # "midiManager":Landroid/media/midi/MidiManager;
    .end local v1    # "infos":[Landroid/media/midi/MidiDeviceInfo;
    return-void
.end method

.method private showKitListDialog(Landroid/net/Uri;)V
    .locals 9
    .param p1, "folderUri"    # Landroid/net/Uri;

    .line 1435
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 1436
    .local v1, "root":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v2, "kitFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/documentfile/provider/DocumentFile;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v3, "kitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v2, v3}, Lcom/pramod/octapadpromidi/MainActivity;->scanForMcnFolders(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1440
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1441
    const-string v4, "No .mcn kit folders found in this folder!"

    invoke-static {p0, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1442
    return-void

    .line 1444
    :cond_0
    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1445
    .local v4, "items":[Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "Select Kit"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/pramod/octapadpromidi/MainActivity$25;

    invoke-direct {v6, p0, v2}, Lcom/pramod/octapadpromidi/MainActivity$25;-><init>(Lcom/pramod/octapadpromidi/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Change Folder"

    new-instance v7, Lcom/pramod/octapadpromidi/MainActivity$24;

    invoke-direct {v7, p0}, Lcom/pramod/octapadpromidi/MainActivity$24;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    .line 1458
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Cancel"

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Landroid/content/DialogInterface$OnClickListener;

    .line 1463
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1464
    return-void

    .line 1467
    .end local v2    # "kitFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/documentfile/provider/DocumentFile;>;"
    .end local v3    # "kitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "items":[Ljava/lang/String;
    :cond_1
    const-string v2, "Invalid folder! Choose again."

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1468
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->openListFolderPicker()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    .end local v1    # "root":Landroidx/documentfile/provider/DocumentFile;
    goto :goto_0

    .line 1469
    :catch_0
    move-exception v1

    .line 1470
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1473
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public closeMidiDevice()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiOutputPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiOutputPort;

    .line 281
    .local v1, "port":Landroid/media/midi/MidiOutputPort;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Landroid/media/midi/MidiOutputPort;->close()V

    .line 284
    .end local v1    # "port":Landroid/media/midi/MidiOutputPort;
    :cond_0
    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiOutputPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;

    .line 287
    .local v0, "midiDevice":Landroid/media/midi/MidiDevice;
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Landroid/media/midi/MidiDevice;->close()V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "midiDevice":Landroid/media/midi/MidiDevice;
    :cond_2
    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public copyPadSound(II)V
    .locals 19
    .param p1, "fromPad"    # I
    .param p2, "toPad"    # I

    .line 840
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    if-ne v2, v3, :cond_0

    .line 841
    return-void

    .line 843
    :cond_0
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    .line 844
    .local v4, "uriArr":[Landroid/net/Uri;
    aget-object v5, v4, v2

    .line 845
    .local v5, "uri":Landroid/net/Uri;
    aput-object v5, v4, v3

    .line 846
    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    .line 847
    .local v6, "iArr":[I
    aget v0, v6, v2

    aput v0, v6, v3

    .line 848
    iget-object v7, v1, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    .line 849
    .local v7, "fArr":[F
    aget v0, v7, v2

    aput v0, v7, v3

    .line 850
    iget-object v8, v1, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    .line 851
    .local v8, "fArr2":[F
    aget v0, v8, v2

    aput v0, v8, v3

    .line 852
    iget-object v9, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    .line 853
    .local v9, "zArr":[Z
    aget-boolean v0, v9, v2

    aput-boolean v0, v9, v3

    .line 854
    iget-object v10, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    .line 855
    .local v10, "fArr3":[F
    aget v0, v10, v2

    aput v0, v10, v3

    .line 856
    iget-object v11, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    .line 857
    .local v11, "fArr4":[F
    aget v0, v11, v2

    aput v0, v11, v3

    .line 858
    iget-object v12, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    .line 859
    .local v12, "fArr5":[F
    aget v0, v12, v2

    aput v0, v12, v3

    .line 860
    iget-object v13, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    .line 861
    .local v13, "fArr6":[F
    aget v0, v13, v2

    aput v0, v13, v3

    .line 862
    iget-object v14, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    .line 863
    .local v14, "fArr7":[F
    aget v0, v14, v2

    aput v0, v14, v3

    .line 864
    iget-object v15, v1, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    .line 865
    .local v15, "iArr2":[I
    aget v0, v15, v2

    aput v0, v15, v3

    .line 867
    const/16 v16, 0x0

    move-object/from16 v17, v4

    .end local v4    # "uriArr":[Landroid/net/Uri;
    .local v17, "uriArr":[Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 868
    :try_start_0
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v4, v3, v5}, Lcom/pramod/octapadpromidi/AudioEngine;->loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v5

    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_1

    .line 870
    :cond_1
    :try_start_1
    aget v0, v6, v3

    .line 871
    .local v0, "i":I
    if-eqz v0, :cond_2

    .line 872
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v5

    .end local v5    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    :try_start_2
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v5, v3, v0}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_0

    .line 874
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    move-object/from16 v18, v5

    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v18    # "uri":Landroid/net/Uri;
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v16, v4, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 880
    .end local v0    # "i":I
    :goto_0
    goto :goto_2

    .line 877
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v18    # "uri":Landroid/net/Uri;
    .restart local v5    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    .line 878
    .end local v5    # "uri":Landroid/net/Uri;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "uri":Landroid/net/Uri;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying sound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 879
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v16, v4, v3

    .line 881
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    iget v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {v1, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copied PAD "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> PAD "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 883
    return-void
.end method

.method public handleMidiNoteOff(B)V
    .locals 4
    .param p1, "note"    # B

    iget-boolean v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    rem-int/lit8 v0, p1, 0x8

    .line 361
    .local v0, "padIndex":I
    if-ltz v0, :cond_1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v1, v0}, Lcom/pramod/octapadpromidi/AudioEngine;->stopPad(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MainActivity"

    const-string v3, "Error handling MIDI note off"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 367
    :goto_1
    return-void
.end method

.method public handleMidiNoteOn(BB)V
    .locals 3
    .param p1, "note"    # B
    .param p2, "velocity"    # B

    iget-boolean v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    const/4 v0, -0x1

    .line 299
    .local v0, "padIndex":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 327
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :pswitch_2
    const/4 v0, 0x6

    .line 325
    goto :goto_0

    .line 321
    :pswitch_3
    const/4 v0, 0x1

    .line 322
    goto :goto_0

    .line 315
    :pswitch_4
    const/4 v0, 0x7

    .line 316
    goto :goto_0

    .line 311
    :pswitch_5
    const/4 v0, 0x3

    .line 312
    goto :goto_0

    .line 308
    :pswitch_6
    const/4 v0, 0x5

    .line 309
    goto :goto_0

    .line 304
    :pswitch_7
    const/4 v0, 0x2

    .line 305
    goto :goto_0

    .line 301
    :pswitch_8
    const/4 v0, 0x4

    .line 302
    nop

    .line 330
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 331
    rem-int/lit8 v0, p1, 0x8

    .line 333
    :cond_1
    move v1, v0

    .line 335
    .local v1, "finalPadIndex":I
    invoke-direct {p0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->playPadSoundImmediate(I)V

    .line 337
    new-instance v2, Lcom/pramod/octapadpromidi/MainActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/pramod/octapadpromidi/MainActivity$3;-><init>(Lcom/pramod/octapadpromidi/MainActivity;I)V

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public loadKitFromFolder(Landroid/net/Uri;)V
    .locals 24
    .param p1, "folderUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1180
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p0 .. p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    move-object v3, v0

    .line 1181
    .local v3, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    if-nez v3, :cond_0

    .line 1182
    const-string v0, "Folder not found!"

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1183
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_4

    .line 1186
    sget-object v4, Lcom/pramod/octapadpromidi/KitManager;->DEFAULT_WAV_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    .line 1187
    .local v4, "wav":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v4, :cond_2

    .line 1188
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1189
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aput v2, v5, v0

    .line 1190
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/pramod/octapadpromidi/AudioEngine;->loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1191
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v5, v5, v0

    .line 1192
    .local v5, "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-eqz v5, :cond_1

    .line 1193
    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v6, v5}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V

    .line 1195
    .end local v5    # "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_1
    goto :goto_1

    .line 1196
    :cond_2
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 1197
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    .line 1198
    .local v5, "iArr":[I
    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    iget v7, v1, Lcom/pramod/octapadpromidi/MainActivity;->currentPresetKit:I

    aget-object v6, v6, v7

    aget v6, v6, v0

    .line 1199
    .local v6, "i2":I
    aput v6, v5, v0

    .line 1200
    iget-object v7, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v8, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v8, v0, v6}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v8

    aput-object v8, v7, v0

    .line 1201
    iget-object v7, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v7, v7, v0

    .line 1202
    .local v7, "sampleData2":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-eqz v7, :cond_3

    .line 1203
    iget-object v8, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v8, v7}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V

    .line 1185
    .end local v4    # "wav":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "iArr":[I
    .end local v6    # "i2":I
    .end local v7    # "sampleData2":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1208
    .local v5, "folderName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 1209
    const-string v0, ".mcn"

    const-string v6, ""

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "strReplace":Ljava/lang/String;
    iput-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    .line 1211
    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->txtKitName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    .end local v0    # "strReplace":Ljava/lang/String;
    :cond_5
    const-string v0, "kit_data.json"

    invoke-virtual {v3, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    move-object v6, v0

    .line 1214
    .local v6, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v6, :cond_13

    .line 1215
    const/4 v7, 0x0

    .line 1216
    .local v7, "lastException":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1218
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 1221
    goto :goto_2

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "e":Ljava/lang/Exception;
    move-object v7, v0

    .line 1222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v8, :cond_12

    .line 1223
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v0

    .line 1224
    .local v9, "reader2":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .line 1226
    .local v10, "sb2":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1227
    .local v11, "line":Ljava/lang/String;
    if-nez v11, :cond_10

    .line 1228
    nop

    .line 1239
    .end local v11    # "line":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1240
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 1241
    .local v11, "jsonData":Lorg/json/JSONObject;
    const-string v0, "volume"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v12, v0

    .line 1242
    .local v12, "volArray":Lorg/json/JSONArray;
    const-string v0, "pitch"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v13, v0

    .line 1243
    .local v13, "pitchArray":Lorg/json/JSONArray;
    const-string v0, "delayOn"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v14, v0

    .line 1244
    .local v14, "dlyOnArray":Lorg/json/JSONArray;
    const-string v0, "delayTime"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v15, v0

    .line 1245
    .local v15, "dlyTArray":Lorg/json/JSONArray;
    const-string v0, "delayLevel"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1246
    .local v16, "dlyLArray":Lorg/json/JSONArray;
    const-string v0, "eqHigh"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1247
    .local v17, "eqHArray":Lorg/json/JSONArray;
    const-string v0, "eqMid"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1248
    .local v18, "eqMArray":Lorg/json/JSONArray;
    const-string v0, "eqLow"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    move-object/from16 v19, v0

    .line 1250
    .local v19, "eqLArray":Lorg/json/JSONArray;
    :try_start_3
    const-string v0, "chokeGroup"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    move-object/from16 v20, v0

    .line 1251
    .local v20, "chokeArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    move v2, v0

    .line 1253
    .local v2, "i3":I
    :goto_4
    move-object/from16 v21, v6

    .line 1254
    .local v21, "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    if-lt v2, v4, :cond_6

    .line 1255
    nop

    .line 1292
    .end local v2    # "i3":I
    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v16, v6

    goto/16 :goto_d

    .line 1257
    .restart local v2    # "i3":I
    .restart local v20    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_6
    if-eqz v12, :cond_7

    .line 1259
    :try_start_4
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v22, v5

    .end local v5    # "folderName":Ljava/lang/String;
    .local v22, "folderName":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v0, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1262
    goto :goto_5

    .line 1260
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v22    # "folderName":Ljava/lang/String;
    .restart local v5    # "folderName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v22, v5

    .end local v5    # "folderName":Ljava/lang/String;
    .restart local v22    # "folderName":Ljava/lang/String;
    goto :goto_5

    .line 1257
    .end local v22    # "folderName":Ljava/lang/String;
    .restart local v5    # "folderName":Ljava/lang/String;
    :cond_7
    move-object/from16 v22, v5

    .line 1264
    .end local v5    # "folderName":Ljava/lang/String;
    .restart local v22    # "folderName":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_8

    .line 1265
    :try_start_6
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v0, v2

    goto :goto_6

    .line 1290
    .end local v2    # "i3":I
    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :catch_3
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v6

    goto/16 :goto_d

    .line 1267
    .restart local v2    # "i3":I
    .restart local v20    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_8
    :goto_6
    if-eqz v14, :cond_9

    .line 1268
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 1270
    :cond_9
    if-eqz v15, :cond_a

    .line 1271
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v0, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1273
    :cond_a
    move-object/from16 v4, v16

    .end local v16    # "dlyLArray":Lorg/json/JSONArray;
    .local v4, "dlyLArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_b

    .line 1274
    :try_start_7
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v16, v6

    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v16, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :try_start_8
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 1290
    .end local v2    # "i3":I
    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :catch_4
    move-exception v0

    move-object/from16 v23, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v23

    goto/16 :goto_d

    .end local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :catch_5
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v23, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v23

    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    goto/16 :goto_d

    .line 1273
    .end local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v2    # "i3":I
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v20    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_b
    move-object/from16 v16, v6

    .line 1276
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :goto_7
    move-object/from16 v5, v17

    .end local v17    # "eqHArray":Lorg/json/JSONArray;
    .local v5, "eqHArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_c

    .line 1277
    :try_start_9
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-object v6, v3

    move-object/from16 v17, v4

    .end local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v4    # "dlyLArray":Lorg/json/JSONArray;
    .local v6, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .local v17, "dlyLArray":Lorg/json/JSONArray;
    :try_start_a
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v0, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_8

    .line 1290
    .end local v2    # "i3":I
    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :catch_6
    move-exception v0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_d

    .end local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v17    # "dlyLArray":Lorg/json/JSONArray;
    .restart local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v4    # "dlyLArray":Lorg/json/JSONArray;
    :catch_7
    move-exception v0

    move-object v6, v3

    move-object/from16 v17, v4

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v4    # "dlyLArray":Lorg/json/JSONArray;
    .restart local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v17    # "dlyLArray":Lorg/json/JSONArray;
    goto/16 :goto_d

    .line 1276
    .end local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v17    # "dlyLArray":Lorg/json/JSONArray;
    .restart local v2    # "i3":I
    .restart local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v4    # "dlyLArray":Lorg/json/JSONArray;
    .restart local v20    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_c
    move-object v6, v3

    move-object/from16 v17, v4

    .line 1279
    .end local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v4    # "dlyLArray":Lorg/json/JSONArray;
    .restart local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v17    # "dlyLArray":Lorg/json/JSONArray;
    :goto_8
    move-object/from16 v3, v18

    .end local v18    # "eqMArray":Lorg/json/JSONArray;
    .local v3, "eqMArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_d

    .line 1280
    :try_start_b
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v18, v5

    .end local v5    # "eqHArray":Lorg/json/JSONArray;
    .local v18, "eqHArray":Lorg/json/JSONArray;
    :try_start_c
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v0, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_9

    .line 1290
    .end local v2    # "i3":I
    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :catch_8
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v19, v6

    goto/16 :goto_d

    .end local v18    # "eqHArray":Lorg/json/JSONArray;
    .restart local v5    # "eqHArray":Lorg/json/JSONArray;
    :catch_9
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v4, v19

    move-object/from16 v19, v6

    .end local v5    # "eqHArray":Lorg/json/JSONArray;
    .restart local v18    # "eqHArray":Lorg/json/JSONArray;
    goto/16 :goto_d

    .line 1279
    .end local v18    # "eqHArray":Lorg/json/JSONArray;
    .restart local v2    # "i3":I
    .restart local v5    # "eqHArray":Lorg/json/JSONArray;
    .restart local v20    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_d
    move-object/from16 v18, v5

    .line 1282
    .end local v5    # "eqHArray":Lorg/json/JSONArray;
    .restart local v18    # "eqHArray":Lorg/json/JSONArray;
    :goto_9
    move-object/from16 v4, v19

    .end local v19    # "eqLArray":Lorg/json/JSONArray;
    .local v4, "eqLArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_e

    .line 1283
    :try_start_d
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v19, v6

    .end local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .local v19, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    :try_start_e
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v2

    goto :goto_a

    .line 1290
    .end local v2    # "i3":I
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    .restart local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    :catch_a
    move-exception v0

    move-object/from16 v19, v6

    .end local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    goto/16 :goto_d

    .line 1282
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v2    # "i3":I
    .restart local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v20    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_e
    move-object/from16 v19, v6

    .line 1285
    .end local v6    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    :goto_a
    move-object/from16 v5, v20

    .end local v20    # "chokeArray":Lorg/json/JSONArray;
    .local v5, "chokeArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_f

    .line 1286
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v0, v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_b

    .line 1290
    .end local v2    # "i3":I
    .end local v5    # "chokeArray":Lorg/json/JSONArray;
    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :catch_b
    move-exception v0

    goto :goto_d

    .line 1288
    .restart local v2    # "i3":I
    .restart local v5    # "chokeArray":Lorg/json/JSONArray;
    .restart local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    :cond_f
    :goto_b
    nop

    .end local v21    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    add-int/lit8 v2, v2, 0x1

    .line 1289
    move-object/from16 v20, v5

    move-object/from16 v6, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v5, v22

    move-object/from16 v18, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v4

    const/16 v4, 0x8

    goto/16 :goto_4

    .line 1290
    .end local v2    # "i3":I
    .end local v4    # "eqLArray":Lorg/json/JSONArray;
    .end local v22    # "folderName":Ljava/lang/String;
    .local v3, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .local v5, "folderName":Ljava/lang/String;
    .local v6, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v16, "dlyLArray":Lorg/json/JSONArray;
    .local v17, "eqHArray":Lorg/json/JSONArray;
    .local v18, "eqMArray":Lorg/json/JSONArray;
    .local v19, "eqLArray":Lorg/json/JSONArray;
    :catch_c
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v4, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v6

    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v3, "eqMArray":Lorg/json/JSONArray;
    .restart local v4    # "eqLArray":Lorg/json/JSONArray;
    .local v16, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v17, "dlyLArray":Lorg/json/JSONArray;
    .local v18, "eqHArray":Lorg/json/JSONArray;
    .local v19, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v22    # "folderName":Ljava/lang/String;
    goto :goto_d

    .line 1231
    .end local v4    # "eqLArray":Lorg/json/JSONArray;
    .end local v12    # "volArray":Lorg/json/JSONArray;
    .end local v13    # "pitchArray":Lorg/json/JSONArray;
    .end local v14    # "dlyOnArray":Lorg/json/JSONArray;
    .end local v15    # "dlyTArray":Lorg/json/JSONArray;
    .end local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v17    # "dlyLArray":Lorg/json/JSONArray;
    .end local v18    # "eqHArray":Lorg/json/JSONArray;
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v22    # "folderName":Ljava/lang/String;
    .local v3, "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "folderName":Ljava/lang/String;
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .local v11, "line":Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v16, v6

    .end local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v22    # "folderName":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 1234
    goto :goto_c

    .line 1232
    :catch_d
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1233
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v7, v2

    .line 1235
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    if-eqz v7, :cond_11

    .line 1236
    :try_start_10
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1238
    .end local v11    # "line":Ljava/lang/String;
    :cond_11
    move-object/from16 v6, v16

    move-object/from16 v3, v19

    move-object/from16 v5, v22

    const/4 v2, 0x0

    const/16 v4, 0x8

    goto/16 :goto_3

    .line 1222
    .end local v9    # "reader2":Ljava/io/BufferedReader;
    .end local v10    # "sb2":Ljava/lang/StringBuilder;
    .end local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v22    # "folderName":Ljava/lang/String;
    .restart local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "folderName":Ljava/lang/String;
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :cond_12
    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v16, v6

    .end local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v22    # "folderName":Ljava/lang/String;
    goto :goto_d

    .line 1214
    .end local v7    # "lastException":Ljava/lang/Exception;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v22    # "folderName":Ljava/lang/String;
    .restart local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v5    # "folderName":Ljava/lang/String;
    .restart local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :cond_13
    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v16, v6

    .line 1295
    .end local v3    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v22    # "folderName":Ljava/lang/String;
    :goto_d
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->seekVolume:Landroid/widget/SeekBar;

    iget-object v2, v1, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    iget v3, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    aget v2, v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1296
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->seekPitch:Landroid/widget/SeekBar;

    iget-object v2, v1, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    iget v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    aget v2, v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1297
    iget v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {v1, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 1298
    const-string v0, "Kit Loaded Successfully!"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 1302
    .end local v16    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v19    # "kitFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v22    # "folderName":Ljava/lang/String;
    goto :goto_e

    .line 1299
    :catch_e
    move-exception v0

    .line 1300
    .local v0, "ignored":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1303
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public loadKitFromMemory(I)V
    .locals 9
    .param p1, "kitNo"    # I

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadKitFromMemory: loading kitNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKitNames:[Ljava/lang/String;

    array-length v0, v0

    const-string v2, "kit_name_"

    if-gt p1, v0, :cond_0

    .line 1099
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentPresetKit:I

    .line 1100
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKitNames:[Ljava/lang/String;

    iget v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentPresetKit:I

    aget-object v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    goto :goto_0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    .line 1104
    :goto_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtKitName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadKitFromMemory: loaded kitName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const-string v4, "kit_"

    if-ge v0, v1, :cond_8

    .line 1107
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_vol_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x3f4ccccd    # 0.8f

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    aput v5, v1, v0

    .line 1108
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_pitch_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    aput v5, v1, v0

    .line 1109
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_dlyon_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v1, v0

    .line 1110
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_dlyt_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x43160000    # 150.0f

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    aput v5, v1, v0

    .line 1111
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_dlyl_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    aput v2, v1, v0

    .line 1112
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_eqh_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    aput v2, v1, v0

    .line 1113
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_eqm_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    aput v2, v1, v0

    .line 1114
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_eql_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    aput v2, v1, v0

    .line 1115
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_choke_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 1116
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_uri_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "uriStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_raw_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1119
    .local v2, "rawResId":I
    if-eqz v1, :cond_3

    .line 1120
    :try_start_0
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1121
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aput v7, v4, v0

    .line 1122
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aget-object v6, v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/pramod/octapadpromidi/AudioEngine;->loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1123
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 1124
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V

    goto/16 :goto_4

    .line 1127
    :cond_1
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aput-object v3, v4, v0

    .line 1128
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKitNames:[Ljava/lang/String;

    array-length v4, v4

    if-gt p1, v4, :cond_2

    .line 1129
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    iget v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentPresetKit:I

    aget-object v5, v5, v6

    aget v5, v5, v0

    aput v5, v4, v0

    goto :goto_2

    .line 1131
    :cond_2
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    aget-object v5, v5, v7

    aget v5, v5, v0

    aput v5, v4, v0

    .line 1133
    :goto_2
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v6, v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1134
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    .line 1135
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V

    goto :goto_4

    .line 1159
    :catch_0
    move-exception v4

    goto :goto_5

    .line 1138
    :cond_3
    if-eqz v2, :cond_5

    .line 1139
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aput-object v3, v4, v0

    .line 1140
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aput v2, v4, v0

    .line 1141
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v5, v0, v2}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1142
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v4, v4, v0

    .line 1143
    .local v4, "sampleData2":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-eqz v4, :cond_4

    .line 1144
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v5, v4}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V

    .line 1146
    .end local v4    # "sampleData2":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_4
    goto :goto_4

    .line 1147
    :cond_5
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aput-object v3, v4, v0

    .line 1148
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKitNames:[Ljava/lang/String;

    array-length v4, v4

    if-gt p1, v4, :cond_6

    .line 1149
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    iget v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentPresetKit:I

    aget-object v5, v5, v6

    aget v5, v5, v0

    aput v5, v4, v0

    goto :goto_3

    .line 1151
    :cond_6
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->presetKits:[[I

    aget-object v5, v5, v7

    aget v5, v5, v0

    aput v5, v4, v0

    .line 1153
    :goto_3
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v6, v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1154
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v4, v4, v0

    .line 1155
    .local v4, "sampleData3":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-eqz v4, :cond_7

    .line 1156
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v5, v4}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .end local v4    # "sampleData3":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_7
    :goto_4
    goto :goto_6

    .line 1160
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v3, v5, v0

    .line 1161
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1106
    .end local v1    # "uriStr":Ljava/lang/String;
    .end local v2    # "rawResId":I
    .end local v4    # "e":Ljava/io/IOException;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1164
    .end local v0    # "i":I
    :cond_8
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_assist_uri"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "assistUriStr":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1166
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->assistSoundUri:Landroid/net/Uri;

    goto :goto_7

    .line 1168
    :cond_9
    iput-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->assistSoundUri:Landroid/net/Uri;

    .line 1170
    :goto_7
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekVolume:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    iget v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    aget v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1171
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekPitch:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    iget v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    aget v3, v3, v5

    sub-float/2addr v3, v2

    mul-float/2addr v3, v4

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1172
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 969
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 970
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .local v1, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 974
    :cond_0
    const/16 v0, 0x1389

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v0, :cond_2

    .line 975
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    .line 976
    .local v0, "takeFlags":I
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 977
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    .line 978
    .local v3, "uriArr":[Landroid/net/Uri;
    iget v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    .line 979
    .local v4, "i":I
    aput-object v1, v3, v4

    .line 980
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v6, v4, v1}, Lcom/pramod/octapadpromidi/AudioEngine;->loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v6

    aput-object v6, v5, v4

    .line 981
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedPad:I

    aget-object v5, v5, v6

    .line 982
    .local v5, "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-eqz v5, :cond_1

    .line 983
    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v6, v5}, Lcom/pramod/octapadpromidi/AudioEngine;->preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V

    .line 985
    :cond_1
    iget v6, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {p0, v6}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 986
    const-string v6, "Sound Loaded & Saved!"

    invoke-static {p0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 987
    return-void

    .line 1012
    .end local v0    # "takeFlags":I
    .end local v3    # "uriArr":[Landroid/net/Uri;
    .end local v4    # "i":I
    .end local v5    # "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 989
    :cond_2
    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_3

    .line 990
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 991
    invoke-virtual {p0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->loadKitFromFolder(Landroid/net/Uri;)V

    .line 992
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 993
    return-void

    .line 995
    :cond_3
    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_5

    .line 996
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 997
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->pendingSaveKitName:Ljava/lang/String;

    .line 998
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 999
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->pendingSaveKitName:Ljava/lang/String;

    .line 1000
    .local v3, "str2":Ljava/lang/String;
    iput-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    .line 1001
    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtKitName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    .end local v3    # "str2":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToFolder(Landroid/net/Uri;)V

    .line 1004
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->pendingSaveKitName:Ljava/lang/String;

    .line 1005
    return-void

    .line 1007
    .end local v0    # "str":Ljava/lang/String;
    :cond_5
    const/16 v0, 0x7d3

    if-ne p1, v0, :cond_6

    .line 1008
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1009
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_list_folder_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1010
    invoke-direct {p0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->showKitListDialog(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1015
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    nop

    .line 1016
    :goto_2
    return-void

    .line 971
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 384
    sget v0, Lcom/pramod/octapadpromidi/R$layout;->main:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->setContentView(I)V

    .line 385
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/MainActivity;->hideSystemUI()V

    .line 386
    const-string v0, "Mobile Octapad Pramod Sahu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/MainActivity;->initPresets()V

    .line 388
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/MainActivity;->setupMidi()V

    .line 389
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 390
    const-string v0, "OctapadSettings"

    invoke-virtual {p0, v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    .line 391
    sget v0, Lcom/pramod/octapadpromidi/R$id;->txtKitName:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtKitName:Landroid/widget/TextView;

    .line 392
    sget v0, Lcom/pramod/octapadpromidi/R$id;->txtSelectedPad:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtSelectedPad:Landroid/widget/TextView;

    .line 393
    sget v0, Lcom/pramod/octapadpromidi/R$id;->txtMidiStatus:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtMidiStatus:Landroid/widget/TextView;

    .line 394
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->txtMidiStatus:Landroid/widget/TextView;

    const-string v2, "MIDI status: disconnected"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnEditMode:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEditMode:Landroid/widget/Button;

    .line 396
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnSaveKit:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnSaveKit:Landroid/widget/Button;

    .line 397
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnLoadKit:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnLoadKit:Landroid/widget/Button;

    .line 398
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnRenameKit:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnRenameKit:Landroid/widget/Button;

    .line 399
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnPrevKit:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnPrevKit:Landroid/widget/Button;

    .line 400
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnNextKit:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnNextKit:Landroid/widget/Button;

    .line 401
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnEq:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEq:Landroid/widget/Button;

    .line 402
    sget v0, Lcom/pramod/octapadpromidi/R$id;->btnLoops:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 403
    .local v0, "button":Landroid/widget/Button;
    iput-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnLoops:Landroid/widget/Button;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    new-instance v2, Lcom/pramod/octapadpromidi/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/pramod/octapadpromidi/MainActivity$4;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    :cond_0
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekVolume:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekVolume:Landroid/widget/SeekBar;

    .line 414
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekPitch:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekPitch:Landroid/widget/SeekBar;

    .line 415
    sget v2, Lcom/pramod/octapadpromidi/R$id;->fxControlBar:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->fxControlBar:Landroid/view/View;

    .line 416
    sget v2, Lcom/pramod/octapadpromidi/R$id;->advControlBar:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->advControlBar:Landroid/view/View;

    .line 417
    sget v2, Lcom/pramod/octapadpromidi/R$id;->chkDelay:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->chkDelay:Landroid/widget/CheckBox;

    .line 418
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekDelayTime:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekDelayTime:Landroid/widget/SeekBar;

    .line 419
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekDelayLevel:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekDelayLevel:Landroid/widget/SeekBar;

    .line 420
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekEqHigh:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqHigh:Landroid/widget/SeekBar;

    .line 421
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekEqMid:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqMid:Landroid/widget/SeekBar;

    .line 422
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekEqLow:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekEqLow:Landroid/widget/SeekBar;

    .line 423
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekChokeGroup:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->seekChokeGroup:Landroid/widget/SeekBar;

    .line 424
    new-instance v2, Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-direct {v2, p0}, Lcom/pramod/octapadpromidi/AudioEngine;-><init>(Landroid/content/Context;)V

    .line 425
    .local v2, "audioEngine":Lcom/pramod/octapadpromidi/AudioEngine;
    iput-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    .line 426
    invoke-virtual {v2}, Lcom/pramod/octapadpromidi/AudioEngine;->start()V

    .line 427
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/MainActivity;->initPads()V

    .line 428
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/MainActivity;->initSeekBars()V

    .line 429
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "edit_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->editMode:Z

    .line 430
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "kit_index"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, "i":I
    iput v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 432
    if-ge v1, v4, :cond_1

    .line 433
    iput v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    .line 435
    :cond_1
    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {p0, v3}, Lcom/pramod/octapadpromidi/MainActivity;->loadKitFromMemory(I)V

    .line 436
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->updateEditButtonUI()V

    .line 437
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEditMode:Landroid/widget/Button;

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$5;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnRenameKit:Landroid/widget/Button;

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$6;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnPrevKit:Landroid/widget/Button;

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$7;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$7;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnNextKit:Landroid/widget/Button;

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$8;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$8;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnLoadKit:Landroid/widget/Button;

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$9;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$9;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnSaveKit:Landroid/widget/Button;

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$10;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$10;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEq:Landroid/widget/Button;

    .line 504
    .local v3, "button2":Landroid/widget/Button;
    if-eqz v3, :cond_2

    .line 505
    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$11;

    invoke-direct {v4, p0}, Lcom/pramod/octapadpromidi/MainActivity$11;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1489
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1490
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 1492
    :try_start_0
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/MainActivity;->closeMidiDevice()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    goto :goto_0

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1497
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    .line 1498
    .local v0, "audioEngine":Lcom/pramod/octapadpromidi/AudioEngine;
    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/AudioEngine;->stop()V

    .line 1500
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1504
    .end local v0    # "audioEngine":Lcom/pramod/octapadpromidi/AudioEngine;
    :cond_0
    goto :goto_1

    .line 1502
    :catch_1
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1505
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1477
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->isVisible:Z

    .line 1478
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 1479
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->isVisible:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1483
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1484
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 1485
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/MainActivity;->hideSystemUI()V

    .line 177
    :cond_0
    return-void
.end method

.method public openListFolderPicker()V
    .locals 2

    .line 1412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1414
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1415
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1416
    const/16 v1, 0x7d3

    invoke-virtual {p0, v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1417
    return-void
.end method

.method public openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/media/midi/MidiDeviceInfo;

    .line 218
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->midiManager:Landroid/media/midi/MidiManager;

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/MainActivity$2;-><init>(Lcom/pramod/octapadpromidi/MainActivity;)V

    new-instance v2, Landroid/os/Handler;

    .line 273
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 275
    :cond_0
    return-void
.end method

.method public playPadSound(I)V
    .locals 17
    .param p1, "index"    # I

    .line 710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aget-object v16, v1, p1

    .line 711
    .local v16, "sampleData":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    if-nez v16, :cond_0

    .line 712
    const-string v1, "No WAV Selected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v1, v0, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    aget v4, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    aget v5, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    aget-boolean v7, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    aget v8, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    aget v9, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    aget v10, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    aget v11, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    aget v12, v2, p1

    iget-object v2, v0, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    aget v13, v2, p1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    move/from16 v2, p1

    move-object/from16 v3, v16

    invoke-virtual/range {v1 .. v15}, Lcom/pramod/octapadpromidi/AudioEngine;->playSample(ILcom/pramod/octapadpromidi/AudioEngine$SampleData;FFIZFFFFFIFF)V

    .line 716
    :goto_0
    return-void
.end method

.method public renameKitDialog()V
    .locals 4

    .line 1039
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1040
    .local v0, "edt":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Enter Kit Name"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/pramod/octapadpromidi/MainActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/pramod/octapadpromidi/MainActivity$23;-><init>(Lcom/pramod/octapadpromidi/MainActivity;Landroid/widget/EditText;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 1053
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1054
    return-void
.end method

.method public sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1058
    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveKitToMemory(I)V
    .locals 6
    .param p1, "kitNo"    # I

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveKitToMemory: saving kitNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1065
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kit_name_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1066
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    const-string v3, "kit_"

    if-ge v1, v2, :cond_2

    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_vol_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_pitch_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_dlyon_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    aget-boolean v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_dlyt_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_dlyl_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_eqh_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_eqm_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_eql_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_choke_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    aget v4, v4, v1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1076
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aget-object v2, v2, v1

    const-string v4, "_raw_"

    const-string v5, "_uri_"

    if-eqz v2, :cond_0

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1079
    :cond_0
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1083
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1066
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->assistSoundUri:Landroid/net/Uri;

    const-string v2, "_assist_uri"

    if-eqz v1, :cond_3

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->assistSoundUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1090
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1092
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1093
    return-void
.end method

.method public showEditPadOptions(I)V
    .locals 6
    .param p1, "padIndex"    # I

    .line 789
    iget v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->copySourcePad:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Pad Sound Copy (Select Source)"

    goto :goto_0

    :cond_0
    const-string v0, "Pad Sound Copy (Paste Mode ON)"

    .line 790
    .local v0, "copyText":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/pramod/octapadpromidi/MainActivity;->swapSourcePad:I

    if-ne v2, v1, :cond_1

    const-string v1, "Pad Sound Exchange (Select First Pad)"

    goto :goto_1

    :cond_1
    const-string v1, "Pad Sound Exchange (Swap Mode ON)"

    .line 791
    .local v1, "swapText":Ljava/lang/String;
    :goto_1
    const-string v2, "Pad Select Sound"

    const-string v3, "Clear Pad Sound"

    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "options":[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PAD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - EDIT OPTIONS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/pramod/octapadpromidi/MainActivity$21;

    invoke-direct {v4, p0, p1}, Lcom/pramod/octapadpromidi/MainActivity$21;-><init>(Lcom/pramod/octapadpromidi/MainActivity;I)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    .line 835
    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 836
    return-void
.end method

.method public showSaveKitNameDialog()V
    .locals 4

    .line 1020
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1021
    .local v0, "edt":Landroid/widget/EditText;
    const-string v1, "Enter Kit Name"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->currentKitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Save Kit As"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/pramod/octapadpromidi/MainActivity$22;

    invoke-direct {v2, p0, v0}, Lcom/pramod/octapadpromidi/MainActivity$22;-><init>(Lcom/pramod/octapadpromidi/MainActivity;Landroid/widget/EditText;)V

    const-string v3, "NEXT"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 1034
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1035
    return-void
.end method

.method public swapPadSound(II)V
    .locals 31
    .param p1, "padA"    # I
    .param p2, "padB"    # I

    .line 887
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    if-ne v2, v3, :cond_0

    .line 888
    return-void

    .line 890
    :cond_0
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    .line 891
    .local v4, "uriArr":[Landroid/net/Uri;
    aget-object v5, v4, v2

    .line 892
    .local v5, "tempUri":Landroid/net/Uri;
    aget-object v0, v4, v3

    aput-object v0, v4, v2

    .line 893
    aput-object v5, v4, v3

    .line 894
    iget-object v6, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    .line 895
    .local v6, "iArr":[I
    aget v7, v6, v2

    .line 896
    .local v7, "tempRaw":I
    aget v0, v6, v3

    aput v0, v6, v2

    .line 897
    aput v7, v6, v3

    .line 898
    iget-object v8, v1, Lcom/pramod/octapadpromidi/MainActivity;->padVolume:[F

    .line 899
    .local v8, "fArr":[F
    aget v9, v8, v2

    .line 900
    .local v9, "tempVol":F
    aget v0, v8, v3

    aput v0, v8, v2

    .line 901
    aput v9, v8, v3

    .line 902
    iget-object v10, v1, Lcom/pramod/octapadpromidi/MainActivity;->padPitch:[F

    .line 903
    .local v10, "fArr2":[F
    aget v11, v10, v2

    .line 904
    .local v11, "tempPitch":F
    aget v0, v10, v3

    aput v0, v10, v2

    .line 905
    aput v11, v10, v3

    .line 906
    iget-object v12, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayOn:[Z

    .line 907
    .local v12, "zArr":[Z
    aget-boolean v13, v12, v2

    .line 908
    .local v13, "tempDlyOn":Z
    aget-boolean v0, v12, v3

    aput-boolean v0, v12, v2

    .line 909
    aput-boolean v13, v12, v3

    .line 910
    iget-object v14, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayTime:[F

    .line 911
    .local v14, "fArr3":[F
    aget v15, v14, v2

    .line 912
    .local v15, "tempDlyT":F
    aget v0, v14, v3

    aput v0, v14, v2

    .line 913
    aput v15, v14, v3

    .line 914
    move-object/from16 v16, v5

    .end local v5    # "tempUri":Landroid/net/Uri;
    .local v16, "tempUri":Landroid/net/Uri;
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->padDelayLevel:[F

    .line 915
    .local v5, "fArr4":[F
    aget v17, v5, v2

    .line 916
    .local v17, "tempDlyL":F
    aget v0, v5, v3

    aput v0, v5, v2

    .line 917
    aput v17, v5, v3

    .line 918
    move-object/from16 v18, v5

    .end local v5    # "fArr4":[F
    .local v18, "fArr4":[F
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqHigh:[F

    .line 919
    .local v5, "fArr5":[F
    aget v19, v5, v2

    .line 920
    .local v19, "tempEqH":F
    aget v0, v5, v3

    aput v0, v5, v2

    .line 921
    aput v19, v5, v3

    .line 922
    move-object/from16 v20, v5

    .end local v5    # "fArr5":[F
    .local v20, "fArr5":[F
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqMid:[F

    .line 923
    .local v5, "fArr6":[F
    aget v21, v5, v2

    .line 924
    .local v21, "tempEqM":F
    aget v0, v5, v3

    aput v0, v5, v2

    .line 925
    aput v21, v5, v3

    .line 926
    move-object/from16 v22, v5

    .end local v5    # "fArr6":[F
    .local v22, "fArr6":[F
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->padEqLow:[F

    .line 927
    .local v5, "fArr7":[F
    aget v23, v5, v2

    .line 928
    .local v23, "tempEqL":F
    aget v0, v5, v3

    aput v0, v5, v2

    .line 929
    aput v23, v5, v3

    .line 930
    move-object/from16 v24, v5

    .end local v5    # "fArr7":[F
    .local v24, "fArr7":[F
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->padChokeGroup:[I

    .line 931
    .local v5, "iArr2":[I
    aget v25, v5, v2

    .line 932
    .local v25, "tempChoke":I
    aget v0, v5, v3

    aput v0, v5, v2

    .line 933
    aput v25, v5, v3

    .line 935
    move-object/from16 v26, v5

    .end local v5    # "iArr2":[I
    .local v26, "iArr2":[I
    const/16 v27, 0x0

    :try_start_0
    aget-object v0, v4, v2

    .line 936
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 937
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v28, v4

    .end local v4    # "uriArr":[Landroid/net/Uri;
    .local v28, "uriArr":[Landroid/net/Uri;
    :try_start_1
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v4, v2, v0}, Lcom/pramod/octapadpromidi/AudioEngine;->loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v4

    aput-object v4, v5, v2

    move-object/from16 v29, v0

    goto :goto_0

    .line 939
    .end local v28    # "uriArr":[Landroid/net/Uri;
    .restart local v4    # "uriArr":[Landroid/net/Uri;
    :cond_1
    move-object/from16 v28, v4

    .end local v4    # "uriArr":[Landroid/net/Uri;
    .restart local v28    # "uriArr":[Landroid/net/Uri;
    aget v4, v6, v2

    .line 940
    .local v4, "i":I
    if-eqz v4, :cond_2

    .line 941
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-object/from16 v29, v0

    .end local v0    # "uri":Landroid/net/Uri;
    .local v29, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v0, v2, v4}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v0

    aput-object v0, v5, v2

    goto :goto_0

    .line 943
    .end local v29    # "uri":Landroid/net/Uri;
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_2
    move-object/from16 v29, v0

    .end local v0    # "uri":Landroid/net/Uri;
    .restart local v29    # "uri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v27, v0, v2

    .line 946
    .end local v4    # "i":I
    :goto_0
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedWavUris:[Landroid/net/Uri;

    aget-object v0, v0, v3

    .line 947
    .local v0, "uri2":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 948
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v5, v3, v0}, Lcom/pramod/octapadpromidi/AudioEngine;->loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_1

    .line 950
    :cond_3
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->selectedRawResIds:[I

    aget v4, v4, v3

    .line 951
    .local v4, "i2":I
    if-eqz v4, :cond_4

    .line 952
    iget-object v5, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-object/from16 v30, v0

    .end local v0    # "uri2":Landroid/net/Uri;
    .local v30, "uri2":Landroid/net/Uri;
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->audioEngine:Lcom/pramod/octapadpromidi/AudioEngine;

    invoke-virtual {v0, v3, v4}, Lcom/pramod/octapadpromidi/AudioEngine;->loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v0

    aput-object v0, v5, v3

    goto :goto_1

    .line 954
    .end local v30    # "uri2":Landroid/net/Uri;
    .restart local v0    # "uri2":Landroid/net/Uri;
    :cond_4
    move-object/from16 v30, v0

    .end local v0    # "uri2":Landroid/net/Uri;
    .restart local v30    # "uri2":Landroid/net/Uri;
    iget-object v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v27, v0, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 961
    .end local v4    # "i2":I
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v30    # "uri2":Landroid/net/Uri;
    :goto_1
    goto :goto_3

    .line 957
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v28    # "uriArr":[Landroid/net/Uri;
    .local v4, "uriArr":[Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object/from16 v28, v4

    .line 958
    .end local v4    # "uriArr":[Landroid/net/Uri;
    .local v0, "e":Ljava/io/IOException;
    .restart local v28    # "uriArr":[Landroid/net/Uri;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error swapping sounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 959
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v27, v4, v2

    .line 960
    iget-object v4, v1, Lcom/pramod/octapadpromidi/MainActivity;->samples:[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    aput-object v27, v4, v3

    .line 962
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    iget v0, v1, Lcom/pramod/octapadpromidi/MainActivity;->kitIndex:I

    invoke-virtual {v1, v0}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Swapped PAD "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " <-> PAD "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 964
    return-void
.end method

.method public updateEditButtonUI()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEditMode:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->editMode:Z

    if-eqz v1, :cond_0

    const-string v1, "EDIT ON"

    goto :goto_0

    :cond_0
    const-string v1, "EDIT OFF"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity;->btnEditMode:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/pramod/octapadpromidi/MainActivity;->editMode:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->btn_3d_red:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->btn_3d_dark:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 706
    return-void
.end method
