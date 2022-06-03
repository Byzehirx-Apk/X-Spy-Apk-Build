.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final notches:[Ljava/lang/StringBuffer;

.field public static final reflector0:Ljava/lang/StringBuffer;

.field public static final reflectorB:Ljava/lang/StringBuffer;

.field public static final reflectorC:Ljava/lang/StringBuffer;

.field public static final rotorI:Ljava/lang/StringBuffer;

.field public static final rotorII:Ljava/lang/StringBuffer;

.field public static final rotorIII:Ljava/lang/StringBuffer;

.field public static final rotorIV:Ljava/lang/StringBuffer;

.field public static final rotorV:Ljava/lang/StringBuffer;

.field public static final rotorVI:Ljava/lang/StringBuffer;

.field public static final rotorVII:Ljava/lang/StringBuffer;

.field public static final rotorVIII:Ljava/lang/StringBuffer;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

.field public firstRotor:Ljava/lang/StringBuffer;

.field public firstRotorT:Ljava/lang/StringBuffer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

.field public plugBoard:[C

.field public reflector:Ljava/lang/StringBuffer;

.field public secondRotor:Ljava/lang/StringBuffer;

.field public secondRotorT:Ljava/lang/StringBuffer;

.field public thirdRotor:Ljava/lang/StringBuffer;

.field public thirdRotorT:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "EKMFLGDQVZNTOWYHXUSPAIBRCJ"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorI:Ljava/lang/StringBuffer;

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "AJDKSIRUXBLHWTMCQGZNPYFVOE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorII:Ljava/lang/StringBuffer;

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "BDFHJLCPRTXVZNYEIWGAKMUSQO"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIII:Ljava/lang/StringBuffer;

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "ESOVPZJAYQUIRHXLNFTGKDCMWB"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIV:Ljava/lang/StringBuffer;

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "VZBRGITYUPSDNHLXAWMJQOFECK"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorV:Ljava/lang/StringBuffer;

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "JPGVOUMFYQBENHZRDKASXLICTW"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVI:Ljava/lang/StringBuffer;

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "NZJHGRCXMYSWBOUFAIVLPEKQDT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVII:Ljava/lang/StringBuffer;

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "JPGVOUMFYQBENHZRDKASXLICTW"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVIII:Ljava/lang/StringBuffer;

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "YRUHQSLDPXNGOKMIEBFZCWVJAT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorB:Ljava/lang/StringBuffer;

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "FVPJIAOYEDRZXWGCTKUQSBNMHL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorC:Ljava/lang/StringBuffer;

    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/StringBuffer;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Q"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "E"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "V"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "J"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Z"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Z"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Z"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Z"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    .line 32
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    .line 34
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    .line 38
    move-object v5, v0

    const/16 v6, 0x1a

    new-array v6, v6, [C

    fill-array-data v6, :array_0

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    .line 57
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    .line 58
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

    .line 59
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    .line 60
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

    .line 61
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    .line 62
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector:Ljava/lang/StringBuffer;

    .line 63
    return-void

    .line 38
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public static encrypt(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 444
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    new-instance v6, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move v10, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 446
    move-object v6, v5

    const-string/jumbo v7, ""

    if-eq v6, v7, :cond_0

    .line 447
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->setPlugBoard(Ljava/lang/String;)Z

    move-result v6

    .line 449
    :cond_0
    move-object v6, v1

    move-object v7, v0

    move-object v1, v7

    move-object v0, v6

    .line 1381
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1382
    const-string/jumbo v6, ""

    move-object v2, v6

    .line 1387
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1389
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v12, v6

    move v6, v12

    move v7, v12

    .line 1392
    move v3, v7

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_1

    move v6, v3

    const/16 v7, 0x41

    if-lt v6, v7, :cond_1

    .line 1394
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotate()V

    .line 1397
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard(C)C

    move-result v6

    move v3, v6

    .line 1400
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorOne(C)C

    move-result v6

    move v3, v6

    .line 1403
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorTwo(C)C

    move-result v6

    move v3, v6

    .line 1406
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorThree(C)C

    move-result v6

    move v3, v6

    .line 1409
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector(C)C

    move-result v6

    move v3, v6

    .line 1412
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->IrotorThree(C)C

    move-result v6

    move v3, v6

    .line 1415
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->IrotorTwo(C)C

    move-result v6

    move v3, v6

    .line 1418
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->IrotorOne(C)C

    move-result v6

    move v3, v6

    .line 1421
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard(C)C

    move-result v6

    move v3, v6

    .line 1424
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1387
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1429
    :cond_1
    move v6, v3

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 1430
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_1

    .line 1434
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    :goto_2
    return-object v0

    .line 1438
    :cond_3
    move-object v6, v2

    .line 449
    move-object v0, v6

    goto :goto_2
.end method

.method public static pbParser(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 460
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 461
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 475
    :goto_0
    return v0

    .line 465
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    :goto_1
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 467
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-ge v2, v3, :cond_4

    .line 468
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 465
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    :cond_4
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 471
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 475
    :cond_5
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public IrotorOne(C)C
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 284
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    move v0, v2

    return v0
.end method

.method public IrotorThree(C)C
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 308
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    move v0, v2

    return v0
.end method

.method public IrotorTwo(C)C
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 296
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    move v0, v2

    return v0
.end method

.method public getFRSetting()C
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSRSetting()C
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTRSetting()C
    .locals 3

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    move v0, v1

    return v0
.end method

.method public getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;
    .locals 10

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/StringBuffer;

    move-object v2, v3

    .line 171
    move-object v3, v1

    const-string/jumbo v4, "RotorI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorI:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 173
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 174
    move-object v3, v2

    move-object v0, v3

    .line 226
    :goto_0
    return-object v0

    .line 176
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "RotorII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    :cond_2
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorII:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 178
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 179
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 181
    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "RotorIII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v1

    const-string/jumbo v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    :cond_4
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIII:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 183
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 184
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 186
    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "RotorIV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v1

    const-string/jumbo v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 187
    :cond_6
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIV:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 188
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 189
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 191
    :cond_7
    move-object v3, v1

    const-string/jumbo v4, "RotorV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v3, v1

    const-string/jumbo v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 192
    :cond_8
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorV:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 193
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 194
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 196
    :cond_9
    move-object v3, v1

    const-string/jumbo v4, "RotorVI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v3, v1

    const-string/jumbo v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 197
    :cond_a
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVI:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 198
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 199
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 201
    :cond_b
    move-object v3, v1

    const-string/jumbo v4, "RotorVII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object v3, v1

    const-string/jumbo v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 202
    :cond_c
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVII:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 203
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 204
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 206
    :cond_d
    move-object v3, v1

    const-string/jumbo v4, "RotorVIII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object v3, v1

    const-string/jumbo v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 207
    :cond_e
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVIII:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 208
    move-object v3, v2

    const/4 v4, 0x1

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 209
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 211
    :cond_f
    move-object v3, v1

    const-string/jumbo v4, "ReflectorB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v1

    const-string/jumbo v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 212
    :cond_10
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorB:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 213
    move-object v3, v2

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 214
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 216
    :cond_11
    move-object v3, v1

    const-string/jumbo v4, "ReflectorC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object v3, v1

    const-string/jumbo v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 217
    :cond_12
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorC:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 218
    move-object v3, v2

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 219
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 221
    :cond_13
    move-object v3, v1

    const-string/jumbo v4, "No Reflector"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, v1

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 222
    :cond_14
    move-object v3, v2

    const/4 v4, 0x0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 223
    move-object v3, v2

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 224
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0

    .line 226
    :cond_15
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/StringBuffer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "ERROR"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public initialSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 106
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    move v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 110
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    move v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 112
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 115
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    move v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 117
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 118
    return-void
.end method

.method public plugBoard(C)C
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x41

    add-int/lit8 v2, v2, -0x41

    move v1, v2

    .line 346
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    move v3, v1

    aget-char v2, v2, v3

    move v0, v2

    return v0
.end method

.method public reflector(C)C
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x41

    add-int/lit8 v2, v2, -0x41

    move v1, v2

    .line 271
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 272
    move v0, v2

    return v0
.end method

.method public rotate()V
    .locals 9

    .prologue
    .line 315
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 316
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 319
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 320
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 323
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 326
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 329
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 332
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 335
    :cond_0
    return-void
.end method

.method public rotorOne(C)C
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 237
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    move v0, v2

    return v0
.end method

.method public rotorThree(C)C
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 260
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    move v0, v2

    return v0
.end method

.method public rotorTwo(C)C
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 249
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    move v0, v2

    return v0
.end method

.method public setFirstRotor(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

    .line 73
    return-void
.end method

.method public setPlugBoard(CC)V
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    move v5, v3

    aget-char v4, v4, v5

    move v5, v1

    if-ne v4, v5, :cond_1

    .line 129
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    move v5, v3

    move v6, v2

    aput-char v6, v4, v5

    .line 127
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    move v5, v3

    aget-char v4, v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 131
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    move v5, v3

    move v6, v1

    aput-char v6, v4, v5

    goto :goto_1

    .line 133
    :cond_2
    return-void
.end method

.method public setPlugBoard(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/util/StringTokenizer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const-string/jumbo v7, " "

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 145
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 147
    move-object v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 148
    const/4 v4, 0x0

    move v0, v4

    .line 161
    :goto_0
    return v0

    .line 149
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-ge v4, v5, :cond_0

    .line 150
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 153
    :cond_3
    new-instance v4, Ljava/util/StringTokenizer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const-string/jumbo v7, " "

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 154
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 156
    move-object v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 157
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->setPlugBoard(CC)V

    goto :goto_1

    .line 159
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 161
    :cond_5
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public setSecondRotor(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    .line 82
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

    .line 83
    return-void
.end method

.method public setThirdRotor(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    .line 92
    return-void
.end method
