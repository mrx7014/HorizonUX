.class Lcom/samsung/android/ui/widget/SeslProgressBar$1;
.super Landroid/util/FloatProperty;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/samsung/android/ui/widget/SeslProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslProgressBar;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$1;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/samsung/android/ui/widget/SeslProgressBar;)Ljava/lang/Float;
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslProgressBar;

    .line 131
    iget v0, p1, Lcom/samsung/android/ui/widget/SeslProgressBar;->mVisualProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar$1;->get(Lcom/samsung/android/ui/widget/SeslProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/samsung/android/ui/widget/SeslProgressBar;F)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslProgressBar;
    .param p2, "var2"    # F

    .line 135
    const v0, 0x7f090190

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisualProgress(IF)V

    .line 136
    iput p2, p1, Lcom/samsung/android/ui/widget/SeslProgressBar;->mVisualProgress:F

    .line 137
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 129
    check-cast p1, Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslProgressBar$1;->setValue(Lcom/samsung/android/ui/widget/SeslProgressBar;F)V

    return-void
.end method
