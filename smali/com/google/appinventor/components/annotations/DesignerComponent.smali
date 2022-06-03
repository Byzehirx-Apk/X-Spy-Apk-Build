.class public interface abstract annotation Lcom/google/appinventor/components/annotations/DesignerComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/DesignerComponent;
        androidMinSdk = 0x13
        category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;
        dateBuilt = ""
        description = ""
        designerHelpDescription = ""
        helpUrl = ""
        iconName = ""
        nonVisible = false
        showOnPalette = true
        versionName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract androidMinSdk()I
.end method

.method public abstract category()Lcom/google/appinventor/components/common/ComponentCategory;
.end method

.method public abstract dateBuilt()Ljava/lang/String;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract designerHelpDescription()Ljava/lang/String;
.end method

.method public abstract helpUrl()Ljava/lang/String;
.end method

.method public abstract iconName()Ljava/lang/String;
.end method

.method public abstract nonVisible()Z
.end method

.method public abstract showOnPalette()Z
.end method

.method public abstract version()I
.end method

.method public abstract versionName()Ljava/lang/String;
.end method
