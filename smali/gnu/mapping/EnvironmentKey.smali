.class public interface abstract Lgnu/mapping/EnvironmentKey;
.super Ljava/lang/Object;
.source "EnvironmentKey.java"


# static fields
.field public static final FUNCTION:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    sput-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract getKeyProperty()Ljava/lang/Object;
.end method

.method public abstract getKeySymbol()Lgnu/mapping/Symbol;
.end method

.method public abstract matches(Lgnu/mapping/EnvironmentKey;)Z
.end method

.method public abstract matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
.end method
