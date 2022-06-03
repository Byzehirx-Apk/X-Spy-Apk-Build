.class Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;
.super Ljava/lang/Object;
.source "CryptoUtils.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;->getKeyGenerator(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

.field final synthetic val$keyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;Ljavax/crypto/KeyGenerator;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->this$0:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->val$keyGenerator:Ljavax/crypto/KeyGenerator;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->val$keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 65
    return-void
.end method

.method public init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;
    move-object v1, p1

    .local v1, "parameters":Ljava/security/spec/AlgorithmParameterSpec;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->val$keyGenerator:Ljavax/crypto/KeyGenerator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    return-void
.end method
