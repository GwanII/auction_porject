import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateSellPage extends StatefulWidget {
  @override
  _CreateSellPageState createState() => _CreateSellPageState();
}

class _CreateSellPageState extends State<CreateSellPage> {
  final _formKey = GlobalKey<FormState>();
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();

  String _title = '';
  String _description = '';
  String _minimumPrice = '';

  Future<void> _pickImage() async {
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if (selectedImages != null && selectedImages.length <= 10) {
      setState(() {
        _images.addAll(selectedImages);
        if (_images.length > 10) {
          _images.removeRange(10, _images.length);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Sell Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 이미지 선택 및 표시
              SizedBox(
                height: 120,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: _images.length + 1,
                  itemBuilder: (context, index) {
                    if (index == _images.length) {
                      return GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          color: Colors.grey[300],
                          child: Icon(Icons.add_a_photo),
                        ),
                      );
                    } else {
                      return Image.file(File(_images[index].path));
                    }
                  },
                ),
              ),
              SizedBox(height: 16),
              // 게시물 제목
              TextFormField(
                decoration: InputDecoration(labelText: 'Post Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the post title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value ?? '';
                },
              ),
              SizedBox(height: 16),
              // 게시물 설명
              TextFormField(
                decoration: InputDecoration(labelText: 'Post Description'),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the post description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value ?? '';
                },
              ),
              SizedBox(height: 16),
              // 최소 가격
              TextFormField(
                decoration: InputDecoration(labelText: 'Minimum Price'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the minimum price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _minimumPrice = value ?? '';
                },
              ),
              SizedBox(height: 20),
              // 등록 버튼
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // 여기서 데이터를 서버로 전송하거나 저장할 수 있습니다.
                    print('Title: $_title');
                    print('Description: $_description');
                    print('Minimum Price: $_minimumPrice');
                  }
                },
                child: Text('Create Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
