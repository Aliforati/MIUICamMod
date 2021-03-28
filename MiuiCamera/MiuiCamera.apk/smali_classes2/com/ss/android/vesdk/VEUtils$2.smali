.class public final Lcom/ss/android/vesdk/VEUtils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEUtils;->getQREncodedData(Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEImageListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VEImageListener;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEListener$VEImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEUtils$2;->val$listener:Lcom/ss/android/vesdk/VEListener$VEImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([IIII)V
    .locals 1

    iget-object p4, p0, Lcom/ss/android/vesdk/VEUtils$2;->val$listener:Lcom/ss/android/vesdk/VEListener$VEImageListener;

    if-eqz p4, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEListener$VEImageListener;->onImage([IIILandroid/graphics/Bitmap$Config;)V

    :cond_0
    return-void
.end method
