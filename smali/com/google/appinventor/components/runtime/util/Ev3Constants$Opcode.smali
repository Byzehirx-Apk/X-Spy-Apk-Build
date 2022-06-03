.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$Opcode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Opcode"
.end annotation


# static fields
.field public static final ADD16:B = 0x11t

.field public static final ADD32:B = 0x12t

.field public static final ADD8:B = 0x10t

.field public static final ADDF:B = 0x13t

.field public static final AND16:B = 0x25t

.field public static final AND32:B = 0x26t

.field public static final AND8:B = 0x24t

.field public static final ARRAY:B = -0x3ft

.field public static final ARRAY_APPEND:B = -0x3ct

.field public static final ARRAY_READ:B = -0x3dt

.field public static final ARRAY_WRITE:B = -0x3et

.field public static final BP0:B = -0x78t

.field public static final BP1:B = -0x77t

.field public static final BP2:B = -0x76t

.field public static final BP3:B = -0x75t

.field public static final BP_SET:B = -0x74t

.field public static final CALL:B = 0x9t

.field public static final COM_GET:B = -0x2dt

.field public static final COM_READ:B = -0x6ft

.field public static final COM_READDATA:B = -0x2ft

.field public static final COM_READY:B = -0x30t

.field public static final COM_REMOVE:B = -0x2at

.field public static final COM_SET:B = -0x2ct

.field public static final COM_TEST:B = -0x2bt

.field public static final COM_WRITE:B = -0x6et

.field public static final COM_WRITEDATA:B = -0x2et

.field public static final COM_WRITEFILE:B = -0x29t

.field public static final CP_EQ16:B = 0x4dt

.field public static final CP_EQ32:B = 0x4et

.field public static final CP_EQ8:B = 0x4ct

.field public static final CP_EQF:B = 0x4ft

.field public static final CP_GT16:B = 0x49t

.field public static final CP_GT32:B = 0x4at

.field public static final CP_GT8:B = 0x48t

.field public static final CP_GTEQ16:B = 0x59t

.field public static final CP_GTEQ32:B = 0x5at

.field public static final CP_GTEQ8:B = 0x58t

.field public static final CP_GTEQF:B = 0x5bt

.field public static final CP_GTF:B = 0x4bt

.field public static final CP_LT16:B = 0x45t

.field public static final CP_LT32:B = 0x46t

.field public static final CP_LT8:B = 0x44t

.field public static final CP_LTEQ16:B = 0x55t

.field public static final CP_LTEQ32:B = 0x56t

.field public static final CP_LTEQ8:B = 0x54t

.field public static final CP_LTEQF:B = 0x57t

.field public static final CP_LTF:B = 0x47t

.field public static final CP_NEQ16:B = 0x51t

.field public static final CP_NEQ32:B = 0x52t

.field public static final CP_NEQ8:B = 0x50t

.field public static final CP_NEQF:B = 0x53t

.field public static final DIV16:B = 0x1dt

.field public static final DIV32:B = 0x1et

.field public static final DIV8:B = 0x1ct

.field public static final DIVF:B = 0x1ft

.field public static final DO:B = 0xft

.field public static final ERROR:B = 0x0t

.field public static final FILE:B = -0x40t

.field public static final FILENAME:B = -0x3at

.field public static final INFO:B = 0x7ct

.field public static final INIT_BYTES:B = 0x2ft

.field public static final INPUT_DEVICE:B = -0x67t

.field public static final INPUT_DEVICE_LIST:B = -0x68t

.field public static final INPUT_READ:B = -0x66t

.field public static final INPUT_READEXT:B = -0x62t

.field public static final INPUT_READSI:B = -0x63t

.field public static final INPUT_READY:B = -0x64t

.field public static final INPUT_SAMPLE:B = -0x69t

.field public static final INPUT_TEST:B = -0x65t

.field public static final INPUT_WRITE:B = -0x61t

.field public static final JR:B = 0x40t

.field public static final JR_EQ16:B = 0x6dt

.field public static final JR_EQ32:B = 0x6et

.field public static final JR_EQ8:B = 0x6ct

.field public static final JR_EQF:B = 0x6ft

.field public static final JR_FALSE:B = 0x41t

.field public static final JR_GT16:B = 0x69t

.field public static final JR_GT32:B = 0x6at

.field public static final JR_GT8:B = 0x68t

.field public static final JR_GTEQ16:B = 0x79t

.field public static final JR_GTEQ32:B = 0x7at

.field public static final JR_GTEQ8:B = 0x78t

.field public static final JR_GTEQF:B = 0x7bt

.field public static final JR_GTF:B = 0x6bt

.field public static final JR_LT16:B = 0x65t

.field public static final JR_LT32:B = 0x66t

.field public static final JR_LT8:B = 0x64t

.field public static final JR_LTEQ16:B = 0x75t

.field public static final JR_LTEQ32:B = 0x76t

.field public static final JR_LTEQ8:B = 0x74t

.field public static final JR_LTEQF:B = 0x77t

.field public static final JR_LTF:B = 0x67t

.field public static final JR_NAN:B = 0x43t

.field public static final JR_NEQ16:B = 0x71t

.field public static final JR_NEQ32:B = 0x72t

.field public static final JR_NEQ8:B = 0x70t

.field public static final JR_NEQF:B = 0x73t

.field public static final JR_TRUE:B = 0x42t

.field public static final KEEP_ALIVE:B = -0x70t

.field public static final LABEL:B = 0xdt

.field public static final MAILBOX_CLOSE:B = -0x23t

.field public static final MAILBOX_OPEN:B = -0x28t

.field public static final MAILBOX_READ:B = -0x26t

.field public static final MAILBOX_READY:B = -0x24t

.field public static final MAILBOX_TEST:B = -0x25t

.field public static final MAILBOX_WRITE:B = -0x27t

.field public static final MATH:B = -0x73t

.field public static final MEMORY_READ:B = 0x7ft

.field public static final MEMORY_USAGE:B = -0x3bt

.field public static final MEMORY_WRITE:B = 0x7et

.field public static final MOVE16_16:B = 0x35t

.field public static final MOVE16_32:B = 0x36t

.field public static final MOVE16_8:B = 0x34t

.field public static final MOVE16_F:B = 0x37t

.field public static final MOVE32_16:B = 0x39t

.field public static final MOVE32_32:B = 0x3at

.field public static final MOVE32_8:B = 0x38t

.field public static final MOVE32_F:B = 0x3bt

.field public static final MOVE8_16:B = 0x31t

.field public static final MOVE8_32:B = 0x32t

.field public static final MOVE8_8:B = 0x30t

.field public static final MOVE8_F:B = 0x33t

.field public static final MOVEF_16:B = 0x3dt

.field public static final MOVEF_32:B = 0x3et

.field public static final MOVEF_8:B = 0x3ct

.field public static final MOVEF_F:B = 0x3ft

.field public static final MUL16:B = 0x19t

.field public static final MUL32:B = 0x1at

.field public static final MUL8:B = 0x18t

.field public static final MULF:B = 0x1bt

.field public static final NOP:B = 0x1t

.field public static final NOTE_TO_FREQ:B = 0x63t

.field public static final OBJECT_END:B = 0xat

.field public static final OBJECT_START:B = 0x5t

.field public static final OBJECT_STOP:B = 0x4t

.field public static final OBJECT_TRIG:B = 0x6t

.field public static final OBJECT_WAIT:B = 0x7t

.field public static final OR16:B = 0x21t

.field public static final OR32:B = 0x22t

.field public static final OR8:B = 0x20t

.field public static final OUTPUT_CLR_COUNT:B = -0x4et

.field public static final OUTPUT_GET_COUNT:B = -0x4dt

.field public static final OUTPUT_GET_TYPE:B = -0x60t

.field public static final OUTPUT_POLARITY:B = -0x59t

.field public static final OUTPUT_POSITION:B = -0x55t

.field public static final OUTPUT_POWER:B = -0x5ct

.field public static final OUTPUT_PRG_STOP:B = -0x4ct

.field public static final OUTPUT_READ:B = -0x58t

.field public static final OUTPUT_READY:B = -0x56t

.field public static final OUTPUT_RESET:B = -0x5et

.field public static final OUTPUT_SET_TYPE:B = -0x5ft

.field public static final OUTPUT_SPEED:B = -0x5bt

.field public static final OUTPUT_START:B = -0x5at

.field public static final OUTPUT_STEP_POWER:B = -0x54t

.field public static final OUTPUT_STEP_SPEED:B = -0x52t

.field public static final OUTPUT_STEP_SYNC:B = -0x50t

.field public static final OUTPUT_STOP:B = -0x5dt

.field public static final OUTPUT_TEST:B = -0x57t

.field public static final OUTPUT_TIME_POWER:B = -0x53t

.field public static final OUTPUT_TIME_SPEED:B = -0x51t

.field public static final OUTPUT_TIME_SYNC:B = -0x4ft

.field public static final PORT_CNV_INPUT:B = 0x62t

.field public static final PORT_CNV_OUTPUT:B = 0x61t

.field public static final PROBE:B = 0xet

.field public static final PROGRAM_INFO:B = 0xct

.field public static final PROGRAM_START:B = 0x3t

.field public static final PROGRAM_STOP:B = 0x2t

.field public static final RANDOM:B = -0x72t

.field public static final READ16:B = -0x37t

.field public static final READ32:B = -0x36t

.field public static final READ8:B = -0x38t

.field public static final READF:B = -0x35t

.field public static final RETURN:B = 0x8t

.field public static final RL16:B = 0x2dt

.field public static final RL32:B = 0x2et

.field public static final RL8:B = 0x2ct

.field public static final SELECT16:B = 0x5dt

.field public static final SELECT32:B = 0x5et

.field public static final SELECT8:B = 0x5ct

.field public static final SELECTF:B = 0x5ft

.field public static final SLEEP:B = 0xbt

.field public static final SOUND:B = -0x6ct

.field public static final SOUND_READY:B = -0x6at

.field public static final SOUND_TEST:B = -0x6bt

.field public static final STRINGS:B = 0x7dt

.field public static final SUB16:B = 0x15t

.field public static final SUB32:B = 0x16t

.field public static final SUB8:B = 0x14t

.field public static final SUBF:B = 0x17t

.field public static final SYSTEM:B = 0x60t

.field public static final TIMER_READ:B = -0x79t

.field public static final TIMER_READY:B = -0x7at

.field public static final TIMER_READ_US:B = -0x71t

.field public static final TIMER_WAIT:B = -0x7bt

.field public static final TST:B = -0x1t

.field public static final UI_BUTTON:B = -0x7dt

.field public static final UI_DRAW:B = -0x7ct

.field public static final UI_FLUSH:B = -0x80t

.field public static final UI_READ:B = -0x7ft

.field public static final UI_WRITE:B = -0x7et

.field public static final WRITE16:B = -0x33t

.field public static final WRITE32:B = -0x32t

.field public static final WRITE8:B = -0x34t

.field public static final WRITEF:B = -0x31t

.field public static final XOR16:B = 0x29t

.field public static final XOR32:B = 0x2at

.field public static final XOR8:B = 0x28t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
