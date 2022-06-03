.class public Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
.super Ljava/lang/Object;
.source "ConcatKeyDerivationFunction.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private digestLength:I

.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    move-object v1, p1

    .local v1, "hashAlgoritm":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    .line 43
    move-object v2, v0

    invoke-direct {v2}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    move-object v1, p1

    .local v1, "hashAlgoritm":Ljava/lang/String;
    move-object v2, p2

    .local v2, "provider":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, v3, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    .line 49
    move-object v3, v0

    invoke-direct {v3}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    invoke-static {v2}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v2

    iput v2, v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->digestLength:I

    .line 56
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "Hash Algorithm: {} with hashlen: {} bits"

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->digestLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method private traceLog()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    return v0
.end method


# virtual methods
.method getReps(I)J
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    move v1, p1

    .local v1, "keydatalen":I
    move v4, v1

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->digestLength:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    move-wide v2, v4

    .line 126
    .local v2, "repsD":D
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide v2, v4

    .line 127
    move-wide v4, v2

    double-to-int v4, v4

    int-to-long v4, v4

    move-wide v0, v4

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    return-wide v0
.end method

.method public kdf([BI[B)[B
    .locals 15

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    move-object/from16 v1, p1

    .local v1, "sharedSecret":[B
    move/from16 v2, p2

    .local v2, "keydatalen":I
    move-object/from16 v3, p3

    .local v3, "otherInfo":[B
    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->getReps(I)J

    move-result-wide v10

    move-wide v4, v10

    .line 82
    .local v4, "reps":J
    move-object v10, v0

    invoke-direct {v10}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "reps: {}"

    move-wide v12, v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "otherInfo: {}"

    move-object v12, v3

    invoke-static {v12}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v10

    .line 89
    .local v6, "derivedByteOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x1

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    int-to-long v10, v10

    move-wide v12, v4

    cmp-long v10, v10, v12

    if-gtz v10, :cond_3

    .line 91
    move v10, v7

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v10

    move-object v8, v10

    .line 93
    .local v8, "counterBytes":[B
    move-object v10, v0

    invoke-direct {v10}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "rep {} hashing "

    move v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, " counter: {}"

    move-object v12, v8

    invoke-static {v12}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, " z: {}"

    move-object v12, v1

    invoke-static {v12}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, " otherInfo: {}"

    move-object v12, v3

    invoke-static {v12}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 104
    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    move-object v9, v10

    .line 105
    .local v9, "digest":[B
    move-object v10, v0

    invoke-direct {v10}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, " k({}): {}"

    move v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v9

    invoke-static {v13}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_2
    move-object v10, v6

    move-object v11, v9

    const/4 v12, 0x0

    move-object v13, v9

    array-length v13, v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 109
    .end local v8    # "counterBytes":[B
    .end local v9    # "digest":[B
    :cond_3
    move v10, v2

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->byteLength(I)I

    move-result v10

    move v7, v10

    .line 110
    .local v7, "keyDateLenInBytes":I
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object v8, v10

    .line 111
    .local v8, "derivedKeyMaterial":[B
    move-object v10, v0

    invoke-direct {v10}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "derived key material: {}"

    move-object v12, v8

    invoke-static {v12}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_4
    move-object v10, v8

    array-length v10, v10

    move v11, v7

    if-eq v10, v11, :cond_6

    .line 114
    move-object v10, v8

    const/4 v11, 0x0

    move v12, v7

    invoke-static {v10, v11, v12}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v10

    move-object v9, v10

    .line 115
    .local v9, "newKeyMaterial":[B
    move-object v10, v0

    invoke-direct {v10}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "first {} bits of derived key material: {}"

    move v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v9

    invoke-static {v13}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    :cond_5
    move-object v10, v9

    move-object v8, v10

    .line 119
    .end local v9    # "newKeyMaterial":[B
    :cond_6
    move-object v10, v0

    invoke-direct {v10}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "final derived key material: {}"

    move-object v12, v8

    invoke-static {v12}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_7
    move-object v10, v8

    move-object v0, v10

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    return-object v0
.end method

.method public kdf([BI[B[B[B[B[B)[B
    .locals 14

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    move-object v1, p1

    .local v1, "sharedSecret":[B
    move/from16 v2, p2

    .local v2, "keydatalen":I
    move-object/from16 v3, p3

    .local v3, "algorithmId":[B
    move-object/from16 v4, p4

    .local v4, "partyUInfo":[B
    move-object/from16 v5, p5

    .local v5, "partyVInfo":[B
    move-object/from16 v6, p6

    .local v6, "suppPubInfo":[B
    move-object/from16 v7, p7

    .local v7, "suppPrivInfo":[B
    move-object v9, v0

    invoke-direct {v9}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v9

    .line 64
    .local v8, "msg":Ljava/lang/StringBuilder;
    move-object v9, v8

    const-string/jumbo v10, "KDF:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 65
    move-object v9, v8

    const-string/jumbo v10, "  z: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 66
    move-object v9, v8

    const-string/jumbo v10, "  keydatalen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 67
    move-object v9, v8

    const-string/jumbo v10, "  algorithmId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 68
    move-object v9, v8

    const-string/jumbo v10, "  partyUInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 69
    move-object v9, v8

    const-string/jumbo v10, "  partyVInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 70
    move-object v9, v8

    const-string/jumbo v10, "  suppPubInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 71
    move-object v9, v8

    const-string/jumbo v10, "  suppPrivInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 72
    sget-object v9, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 75
    .end local v8    # "msg":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v9, 0x5

    new-array v9, v9, [[B

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v4

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v5

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move-object v12, v6

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    move-object v12, v7

    aput-object v12, v10, v11

    invoke-static {v9}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v9

    move-object v8, v9

    .line 76
    .local v8, "otherInfo":[B
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move-object v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->kdf([BI[B)[B

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
    return-object v0
.end method
