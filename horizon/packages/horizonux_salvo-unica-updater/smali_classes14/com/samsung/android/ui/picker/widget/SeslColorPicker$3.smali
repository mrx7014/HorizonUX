.class Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;


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

    .line 203
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/samsung/android/ui/widget/SeslSeekBar;IZ)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 205
    if-eqz p3, :cond_0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$202(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;Z)Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$300(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$300(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    .line 211
    .local v0, "var4":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 212
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$700(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$700(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 221
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;

    .line 224
    return-void
.end method

.method public onStopTrackingTouch(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;

    .line 227
    return-void
.end method
