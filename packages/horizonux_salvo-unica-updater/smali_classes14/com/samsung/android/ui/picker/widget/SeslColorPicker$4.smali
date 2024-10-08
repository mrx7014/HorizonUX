.class Lcom/samsung/android/ui/picker/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initOpacitySeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 229
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/MotionEvent;

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 232
    .local v0, "var3":I
    if-eqz v0, :cond_0

    .line 233
    nop

    .line 236
    const/4 v1, 0x0

    return v1

    .line 238
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
