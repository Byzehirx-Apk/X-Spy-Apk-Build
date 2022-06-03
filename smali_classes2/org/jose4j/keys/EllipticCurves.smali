.class public Lorg/jose4j/keys/EllipticCurves;
.super Ljava/lang/Object;
.source "EllipticCurves.java"


# static fields
.field private static final COFACTOR:I = 0x1

.field public static final P256:Ljava/security/spec/ECParameterSpec;

.field public static final P384:Ljava/security/spec/ECParameterSpec;

.field public static final P521:Ljava/security/spec/ECParameterSpec;

.field public static final P_256:Ljava/lang/String; = "P-256"

.field public static final P_384:Ljava/lang/String; = "P-384"

.field public static final P_521:Ljava/lang/String; = "P-521"

.field private static final curveToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/spec/EllipticCurve;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final nameToSpec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/spec/ECParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->nameToSpec:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->curveToName:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    new-instance v2, Ljava/security/spec/EllipticCurve;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/security/spec/ECFieldFp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "115792089210356248762697446949407573530086143415290314195533631308867097853948"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "41058363725152142129326129780047268409114441015993725554835256314039467401291"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/security/spec/ECPoint;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/math/BigInteger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "48439561293906451759052585252797914202762949526041747995844080717082404635286"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "36134250956749795798585127919587881956611106672985015071877198253568414405109"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigInteger;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->P256:Ljava/security/spec/ECParameterSpec;

    .line 81
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    new-instance v2, Ljava/security/spec/EllipticCurve;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/security/spec/ECFieldFp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112316"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "27580193559959705877849011840389048093056905856361568521428707301988689241309860865136260764883745107765439761230575"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/security/spec/ECPoint;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/math/BigInteger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "26247035095799689268623156744566981891852923491109213387815615900925518854738050089022388053975719786650872476732087"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "8325710961489029985546751289520108179287853048861315594709205902480503199884419224438643760392947333078086511627871"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigInteger;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->P384:Ljava/security/spec/ECParameterSpec;

    .line 112
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    new-instance v2, Ljava/security/spec/EllipticCurve;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/security/spec/ECFieldFp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057148"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "1093849038073734274511112390766805569936207598951683748994586394495953116150735016013708737573759623248592132296706313309438452531591012912142327488478985984"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/security/spec/ECPoint;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/math/BigInteger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "2661740802050217063228768716723360960729859168756973147706671368418802944996427808491545080627771902352094241225065558662157113545570916814161637315895999846"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "3757180025770020463545507224491183603594455134769762486694567779615544477440556316691234405012945539562144444537289428522585666729196580810124344277578376784"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigInteger;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->P521:Ljava/security/spec/ECParameterSpec;

    .line 152
    const-string/jumbo v0, "P-256"

    sget-object v1, Lorg/jose4j/keys/EllipticCurves;->P256:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0, v1}, Lorg/jose4j/keys/EllipticCurves;->addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    .line 153
    const-string/jumbo v0, "P-384"

    sget-object v1, Lorg/jose4j/keys/EllipticCurves;->P384:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0, v1}, Lorg/jose4j/keys/EllipticCurves;->addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    .line 154
    const-string/jumbo v0, "P-521"

    sget-object v1, Lorg/jose4j/keys/EllipticCurves;->P521:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0, v1}, Lorg/jose4j/keys/EllipticCurves;->addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EllipticCurves;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "spec":Ljava/security/spec/ECParameterSpec;
    sget-object v2, Lorg/jose4j/keys/EllipticCurves;->nameToSpec:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    sget-object v2, Lorg/jose4j/keys/EllipticCurves;->curveToName:Ljava/util/Map;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    return-void
.end method

.method public static getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "curve":Ljava/security/spec/EllipticCurve;
    sget-object v1, Lorg/jose4j/keys/EllipticCurves;->curveToName:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "curve":Ljava/security/spec/EllipticCurve;
    return-object v0
.end method

.method public static getSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/jose4j/keys/EllipticCurves;->nameToSpec:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method
