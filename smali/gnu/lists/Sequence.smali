.class public interface abstract Lgnu/lists/Sequence;
.super Ljava/lang/Object;
.source "Sequence.java"

# interfaces
.implements Ljava/util/List;
.implements Lgnu/lists/Consumable;


# static fields
.field public static final ATTRIBUTE_VALUE:I = 0x23

.field public static final BOOLEAN_VALUE:I = 0x1b

.field public static final CDATA_VALUE:I = 0x1f

.field public static final CHAR_VALUE:I = 0x1d

.field public static final COMMENT_VALUE:I = 0x24

.field public static final DOCUMENT_VALUE:I = 0x22

.field public static final DOUBLE_VALUE:I = 0x1a

.field public static final ELEMENT_VALUE:I = 0x21

.field public static final EOF_VALUE:I = 0x0

.field public static final FLOAT_VALUE:I = 0x19

.field public static final INT_S16_VALUE:I = 0x14

.field public static final INT_S32_VALUE:I = 0x16

.field public static final INT_S64_VALUE:I = 0x18

.field public static final INT_S8_VALUE:I = 0x12

.field public static final INT_U16_VALUE:I = 0x13

.field public static final INT_U32_VALUE:I = 0x15

.field public static final INT_U64_VALUE:I = 0x17

.field public static final INT_U8_VALUE:I = 0x11

.field public static final OBJECT_VALUE:I = 0x20

.field public static final PRIM_VALUE:I = 0x10

.field public static final PROCESSING_INSTRUCTION_VALUE:I = 0x25

.field public static final TEXT_BYTE_VALUE:I = 0x1c

.field public static final eofValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    sput-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract elements()Ljava/util/Enumeration;
.end method

.method public abstract fill(Ljava/lang/Object;)V
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract set(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract size()I
.end method
