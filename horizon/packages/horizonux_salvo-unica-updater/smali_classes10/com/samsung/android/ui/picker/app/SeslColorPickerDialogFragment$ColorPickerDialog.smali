.class Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$ColorPickerDialog;
.super Lcom/samsung/android/ui/app/SeslAlertDialog;
.source "SeslColorPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "var2"    # Landroid/content/Context;
    .param p3, "var3"    # Z

    .line 200
    iput-object p1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment$ColorPickerDialog;->this$0:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialogFragment;

    .line 201
    if-eqz p3, :cond_0

    const p1, 0x7f10030b

    goto :goto_0

    :cond_0
    const p1, 0x7f10030a

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 202
    return-void
.end method
